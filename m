Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E37D4FF4B0
	for <lists+blinux-list@lfdr.de>; Wed, 13 Apr 2022 12:32:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649845935;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lQM5+jq5Uu3kFS3VDFL8UpIxMLQpMngZgTd4039hmTk=;
	b=LWLjV0J/xk9om9x/ryER8fBE880PKhZuvBItaPdeU5SupZN4rww6ufpRaY4WmJBpJ0rzzg
	zx/Xgx+aLs1i5qYiWLyzecrIaXbmqLxp6svjr4ekCCQz7aQZusyDuJyFu03yzWDnOOl1++
	DedWvejJaCgVDYUENMOYFTr4o9BEuqo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-608-JiQ_R26nMlywMmet7AsuAw-1; Wed, 13 Apr 2022 06:32:12 -0400
X-MC-Unique: JiQ_R26nMlywMmet7AsuAw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 775CE86B8A1;
	Wed, 13 Apr 2022 10:32:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 30A09416367;
	Wed, 13 Apr 2022 10:32:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C6EDD194037C;
	Wed, 13 Apr 2022 10:32:05 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 13 Apr 2022 11:31:53 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - Command Line Programs for the Blind
References: <mailman.7836.1649830111.111205.blinux-list@redhat.com>
 <mailman.8034.1649840185.111204.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.8034.1649840185.111204.blinux-list@redhat.com>
Message-ID: <mailman.8235.1649845924.111201.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

To me, I want text mode versions of familiar programs. Chrys seems to have a knack of doing that fairly well as of late too, since that gets me the ease of use of a text program, with familiar shortcuts and the power of a full fledged program.

If I want to use something that works for what /I/ want, I'll use dragonfm for moving or deleting or opening up files. I've been breaking and reporting bugs with it and called it a text version of Caja or Nautlius and it....pretty much is. That being said not all command line programs are as useful, or as easy to use.

Text mode and command line email? Certainly doable. I use Mutt instead of Thunderbird for example, but I have yet to find a text console web browser that lets me do all the things Firefox can. W3m doesn't support Javascript or headings or....you get the drift, so for some things, a CLI program is better and simpler with less work involved (for example on Mutt I can just open up my Blinux list folder, hit end, R, type then y to send, no need to tab 10 times then enter then ctrl+r then ctrl+enter to send this email), but I have zero clue where to even begin with a text only web browser since everything needs JS or CSS or...which text mode browsers don't really support that well.

That and I'd argue lumping all blind users into the same boat is pretty dangerous as well. What works for me may not work for Didier for example, we both come at the same problem from different angles but to just look at us and go oh blind users, they do things this way doesn't really work

On Wed, Apr 13, 2022 at 10:56:09AM +0200, Linux for blind general discussion wrote:
> Let me first say that I am myself a massive fan of command line programs,
> but I believe graphical programs also have their place, and depending on
> the information being conveyed, can sometimes be more officiant for blind
> users. One practical example is when one has to sort a big directory of
> files, deleting some and keeping others. For this I would reach for a
> graphical file manager, or even dired in Emacs (which is also not a command
> line program, but a full screen program very similar to GUI equivalents.)
> 
> My personal take is that the argument in that article was valid in the 90s
> when graphical screen readers were still very basic and quirky. The fact
> that speech (and braille) are stream-oriented interfaces, is a fact well
> understood by graphical screen reader developers today. Modern screen
> readers query the accessibility API and present to the blind user a view
> which is actually very similar to something like Edbrowse.
> To illustrate my point, if you take the experience provided by Orca and
> Firefox, swap out speech for command line output, and swap out keyboard
> commands for command line input, you might end up with an interface quite
> similar to Edbrowse.
> That is not to say that there isn't a place for Edbrowse, I think Edbrowse
> can be very useful for both blind and sighted users alike. I just don't
> think it is necessarily more accessible.
> 
> Command line programs are also usually much more performant, because they
> don't need to do complex graphical rendering. This is of course
> advantageous for a speech user, and is perhaps one drawback that graphical
> user interfaces still have. I often wish that I could turn of graphical
> rendering completely in GUI programs, not just something like a screen
> curtain, but turning off the entire code path involved in that process.
> This might mess with spatial calculations of Orca though, for example flat
> review.
> 
> Regards,
> 
> Rynhardt
> 
> 
> On Wed, Apr 13, 2022 at 8:08 AM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
> 
> > I recently ran across this item on Hacker News (
> > https://news.ycombinator.com/):
> >
> > Command Line Programs for the Blind
> > http://www.eklhad.net/philosophy.html
> >
> > - Rich Morin
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

