Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA4C4C4AD9
	for <lists+blinux-list@lfdr.de>; Fri, 25 Feb 2022 17:34:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645806842;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XYHukIqZjPlzBaHXwoIhldpvO0eHGigsZo04wHPlGL4=;
	b=ZQg8yiaY2OBNdzw8KQbZSk3hYcWkfPeOtg0bSyivl1MY6PzBVbrlqEZXVd8Au3pwyviLrm
	iJ74y7hfjrXnmUkTadwQmBA88gZ/u2ihW0uH6nACTftswnE3A24F9vf+tJW5QhHuXU8vT1
	ILmB6/kQpDhb7R9/L+mlTu/+3XvVJAk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-186-0ELrGyI3NrGqT91I-MIVww-1; Fri, 25 Feb 2022 11:33:57 -0500
X-MC-Unique: 0ELrGyI3NrGqT91I-MIVww-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A4121180CBFB;
	Fri, 25 Feb 2022 16:33:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 40C9C8379F;
	Fri, 25 Feb 2022 16:33:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BDCEA1809CB2;
	Fri, 25 Feb 2022 16:33:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21PGUWPL028997 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 25 Feb 2022 11:30:33 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CCF151431C55; Fri, 25 Feb 2022 16:30:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C96871431C54
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 16:30:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B068B8039D5
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 16:30:32 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-465-hd27fLSgNFC0gREe-OqvsQ-1; Fri, 25 Feb 2022 11:30:29 -0500
X-MC-Unique: hd27fLSgNFC0gREe-OqvsQ-1
Received: by mail-qt1-f174.google.com with SMTP id z15so2883690qtx.13
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 08:30:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=I/0rA/glpWlL8V3QwXtMbHTZQEvN+B2hDVecn/GE4JQ=;
	b=Ph0iu/NGDCtgwpSuXiAg1wFIDY3/1KGwCx9nWc1ZPN3ERbnsflOiEdT+fQ/J4BfYFU
	GSdX0gmLZqHRTGdjI5YYVBXlAdjg4UngFOTwgLTlLaR8t5V1cjzPw6KAM5lhTwcWHDFF
	t+9GModznTRRAV6HYV9Td0Bj62Iy4TbAXaHxkk9F1dMncX8ns0uG0/pT/3Sh70Cp57BN
	Yl1nvkRIBdii7NyQfXAfNN4j/oMzvK4wTN87XYxNVTvnOv08d5wnTxFnCZ3MzWlPzIjG
	haMTZRmoRIq+QQvyLyqAPp+KpGfx4QqfSrRmAAgGheTjqw1P8weFNg0wsCZe+yvwVOXG
	Zqhw==
X-Gm-Message-State: AOAM532VGjl2vCP/8zt4JAAaw5/YHwd2folQ51QZQiyjP3CkGj/7WWA2
	zaXIHLEGKo7BUGQr1VTTVsQJ0Dw7D36+ULja/CHYYaxJPUo=
X-Google-Smtp-Source: ABdhPJyQB4ADBbQI1/06CUaIgKQrG4CiXldqEhRK8yVjM/YNY1PUm1c2irBVbIkfPkAoiwoR1OqipxLu5U6vFAbjC/4=
X-Received: by 2002:a05:622a:48c:b0:2dd:a140:e3be with SMTP id
	p12-20020a05622a048c00b002dda140e3bemr7493904qtx.215.1645806629152;
	Fri, 25 Feb 2022 08:30:29 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad4:5f08:0:0:0:0:0 with HTTP; Fri, 25 Feb 2022 08:30:28
	-0800 (PST)
In-Reply-To: <af81b24a-3f13-5005-1fc7-ba325f230bbe@free2.ml>
References: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
	<Yhjpvu0HyqYbNVO3@waffles>
	<852cc77f-a7db-d99f-645-346da7c1a11c@panix.com>
	<af81b24a-3f13-5005-1fc7-ba325f230bbe@free2.ml>
Date: Fri, 25 Feb 2022 16:30:28 +0000
Message-ID: <CAO2sX31YkY_3XAK-t8jNzWZbdsRRaKCNxdXU+Xo0YjyJbgYiKA@mail.gmail.com>
Subject: Re: Voting: Which game would you like to have on Linux?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Othello/Reversi would be nice...

Though, would these be running from the console/a terminal emulator,
or would these be running as GUIs? Also, is your goal to make versions
that work with screen readers or versions that are self-voicing?

There's already an accessible, terminal version of 2048, but it is far
from optimized for blind play:

1. There's no easy way to tell where the gaps in a partially filled row are.

2. There's several blank lines between each row of the board, so
reviewing the board is slowed by having to constantly scroll through
those blank lines.

3. The game uses the arrow keys to make moves, and my console screen
reader uses caps lock plus arrow keys for screen review... this made
it easy to make the wrong move while trying to review the board, Also,
my left pinkie was usually quite sore by the end of a play session due
to all of the holding caps lock.

4. As the tiles get bigger, the number of syllables in each number
gets higher(2, 4, and 8 are one syllable each, 16 is two syllables, 32
and 64 are 3 syllables, 128, 256, 1024, 2048 are all seven syllables,
512 is a bit of a relief, but it's still 5 syllables). The nature of
the game means it takes roughly twice as long to forge each tile as
its predecessor, but since a row like,

2 4 8 8

is four syllables while

128 256 512 1024

is 26 syllables, the game slows down significantly as the board fills
with high value tiles.

A console version with the option to remove the white space used to
make the board look nice, that uses the word "blank" for empty spaces,
and uses the letters of the English alphabet(except for W, they're all
monosyllabic) instead of powers of two for tile labels would improve
accessibility and make playing the game with a screen reader much
faster... I actually tried making a variant I called Z! backwhen I
first heard of 2048, though some of the logic proved trickier than my
programming skills at the time could muster and I didn't know how to
make keypresses execute commands directly instead of via the cin
command in C++.

Though, an audio version that had keyboard controls like:

asdf: read rows from top-to-bottom
qwer: read columns from left-to-right.
arrow keys: shift board in that direction.

with the option to us jkli instead of arrow keys or to have a reverse
hand setup where wasd is used to move, jkl; is used to review by rows,
and uiop is used to review by columns.

would be awesome coupled with using blank and alphabetic tile
labels... and a game pad mode where(assuming a layout similar to the
one popularized by Playstation controllers) the d-pad, face action
buttons, and  shoulder versions can be set to any of movement, row
review, and column review.

And now I find myself wonderingwhat other games played on a 4*4 board
could make use of such a control scheme... and combining the left and
right hand keyboard review I out lined to handle 8*8 boards (left hand
reviewing the top and left halves of the board, right the bottom and
right halves....

Naturally, that's assuming a qwerty layout and you'd want it to use
what ever keys make up the home row and the row above on other
layouts... scaling to other board sizes would be an issue, and it eats
up a lot of the keyboard, but considering how many games default to an
8*8 board and how many moves could be coded as a pair of x, y
coordinates, it feels like an elegant solution for many games.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

