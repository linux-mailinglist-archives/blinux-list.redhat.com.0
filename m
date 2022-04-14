Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 20CE05019FB
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 19:24:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649957052;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xxdV9o+MdxkHXdeANSPO9xL3ZO9VZleAlr3cuUkmjrk=;
	b=aHc3W6GvrivQhqNr0XEdzGOIJYCvtzrWSjg30/rSRt8Mv0IfMlIFsCKI60KRoIazAc0An1
	qYR1FTvala+mjYpLG2XmUCtbYl0ShKHzNFHHadmYuZeAMyHygnicVuT2eaouxAKGwh6WE3
	naG/ZQp674W/vidurF65ufXsTOsVkyw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-517-KinE3FXXNpWcsTJ5zVBqtQ-1; Thu, 14 Apr 2022 13:24:11 -0400
X-MC-Unique: KinE3FXXNpWcsTJ5zVBqtQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7B98B80346F;
	Thu, 14 Apr 2022 17:24:09 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id EB306C15D40;
	Thu, 14 Apr 2022 17:24:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 388F6194034B;
	Thu, 14 Apr 2022 17:24:06 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.8501.1649950048.111209.blinux-list@redhat.com>
References: <mailman.8268.1649857705.111206.blinux-list@redhat.com>
 <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8343.1649887607.111209.blinux-list@redhat.com>
 <mailman.8428.1649888423.111203.blinux-list@redhat.com>
 <mailman.8307.1649889026.111207.blinux-list@redhat.com>
 <mailman.8412.1649893760.111204.blinux-list@redhat.com>
 <mailman.8388.1649918679.111207.blinux-list@redhat.com>
 <mailman.8563.1649948774.111202.blinux-list@redhat.com>
 <mailman.8501.1649950048.111209.blinux-list@redhat.com>
Date: Thu, 14 Apr 2022 17:24:01 +0000
Subject: Re: FYI - Command Line Programs for the Blind
To: blinux-list@redhat.com
Message-ID: <mailman.8552.1649957045.111208.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I confess, I kind of like the anonymity this list provides, though I
understand how that can make some of my posts harder to follow when I
reference things I said in previous posts.

As for quoting, while it can be useful in some circumstances, I find
that for every post that quotes just what needs to be quoted, there
seems to be a dozen that quote huge chunks of the conversation in a
way that actually makes it harder, not easier, to tell what specific
points are being replied to. Not so bad when the reply is at the top
and I can skip over the quoted wall of text by jumping to the heading
marking the start of the next message in the Gmail conversation(I'm
using Gmail's basic HTML view and have no interest in using a
dedicated e-mail client), but it's annoying as heck when there's a
paragraph or two baried between a wall of quotes and the overly long
footer the list attaches to every message(thankfully, said footer is
collapsed most of the time). Between this and quote pyramids on
forums(added annoyance there, there's usually a border around quotes
on forums that renders the innermost quote with incredibly short,
choppy lines), I tend to err on the side of under quoting as a
conditioned counter balance to all the people on the Internet who over
quote... and my annoyance with over quoting likely was older when I
went blind than my blindness is now, though the inability to just tune
out the quotes and scroll past has only reinforced said annoyance.

As for being "part of the OS" versus "something you have to install
manually", I think something worth remembering is that nearly every
Linux distro in existence, thanks to the FOSS model making it much
easier to include third party software, comes bundled with huge chunks
of software you'd have to manually install on a fresh install of
Windows(and probably OSX as well). I haven't regularly used Windows
since the XP days, but unless things have changed drastically, about
all one can do with a fresh install of non-OEM Windows is system
administration, play solitaire, browse the web, edit text files, draw
pictures in paint, and maybe play lowest common denominator media
files... by comparison, some of the more full-featured Linux distros
come preloaded with a full office suite, multiple web browsers,
full-featured image editing for both raster and vector graphics,
multiple text editors, multiple media players(both audio-only and
video), and sometimes multiple Desktop Environments... and that's just
the short list.. And yes, Orca comes preloaded on many distros... and
many distros come preloaded with a console screen reader, though it
might be disabled by default unless you do a console-only install with
a talking installer... but I'm not sure that's fundamentally different
from many distros coming pre-loaded with both Firefox and Chromium...
Or to put it another way, it's like Windows just gives you the base
system and the default Desktop Environment while most Linux distros
give you the base system, a choice of Desktop environments(including
the option to not have one), and a ton of supplementary software. And
don't newer versions of Windows come preloaded with narrator? Though,
like with most things Microsoft, it never seems to be treated as a
major option in the app wars.

And while it's true screen readers are mostly used by the blind, I
don't think they're inheritantly a blind product... Compare
audiobooks, it use to be that about the only source for audiobooks was
government run "Library for the Blind" type services, and now you have
significant numbers of sighted people downloading or streaming
audiobooks from mainstream services, sometimes just because they're
too lazy to read a book themselves, sometimes as an alternative to
fill the silence when their eyes or hands are too busy with something
else to focus on the page or hold a book/eReader... and lately,
YouTube has been spamming me with ads for a Chromium extension that
reads web pages... and the narration makes it obvious the ad is
targetting sighted users. Heck, I recently replied to a question on
Quora about computer related eye strain and suggested
NVDA/Orca/Talkback/Voiceover depending on the platform as a way for
sighted people to give their eyes a rest without having to stop their
reading... and were my vision miraculously restored tomorrow, I
suspect I'd keep Orca as part of my tool kit... if nothing else, the
navigational hotkeys are so darn useful I have to wonder how I got by
without them back when I had a functioning eyeball and why they aren't
a standard part of every web browser in existence... and well, if
text-to-speech reaches the point where a critical mass of sighted
people find it useful, that can only help those for whom it is not
just a nice to have, but a necessity.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

