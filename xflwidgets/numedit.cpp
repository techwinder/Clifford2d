/****************************************************************************

    flow5 application
    Copyright (C) Andre Deperrois 
    License: GPL v3

*****************************************************************************/


#include <QApplication>
#include <QClipboard>
#include <QMimeData>

#include "numedit.h"


NumEdit::NumEdit(QWidget *pWidget) : QLineEdit(pWidget)
{
}


QSize NumEdit::sizeHint() const
{
    QFont fnt;
    QFontMetrics fm(fnt);
    int w = 9 * fm.averageCharWidth();
    int h = fm.height();
    return QSize(w, h);
}


void NumEdit::showEvent(QShowEvent*pEvent)
{
    formatValue();
    QLineEdit::showEvent(pEvent);
}


void NumEdit::focusInEvent(QFocusEvent *pEvent)
{
    selectAll();
    QLineEdit::focusInEvent(pEvent);
}

void NumEdit::focusOutEvent(QFocusEvent *pEvent)
{
    readValue();
    formatValue();

    QLineEdit::focusOutEvent(pEvent);
}


/** Hides the base function */
void NumEdit::paste()
{
    QClipboard const *pClip = QApplication::clipboard();
    if (!pClip->mimeData()->hasText()) return; // can only paste text;

    QString eol = "\n";
    QStringList lines = pClip->text().split(eol);
    if(!lines.size()) return;

    clear();
    setText(lines.first());
}
