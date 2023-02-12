Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7E36935FF
	for <lists+blinux-list@lfdr.de>; Sun, 12 Feb 2023 05:24:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676175886;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BoCTMZKo4wMpnJkQLjUZHNDWs+C0nzg8OQcOCBl5GwQ=;
	b=fpfOg2pFqJqbBNjzLUx4F46Td1tIGffm2V6VsY283cMzbCoK2N+76vo9wc7FTxQnJAyDCV
	lRSPNVY+gsa9R7QTjunI2wlLJrBHmYjPM5zpuRBC2rG1WerlfTVfcEtkzA2e5ghUfdEpH6
	HUToVM2F6G3kBEoNd5iUUQvSw5NZInc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-307-nNNAJReRPoWbaSOUpfr2-g-1; Sat, 11 Feb 2023 23:24:42 -0500
X-MC-Unique: nNNAJReRPoWbaSOUpfr2-g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CC612811E6E;
	Sun, 12 Feb 2023 04:24:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 18FD92166B26;
	Sun, 12 Feb 2023 04:24:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 88A4719465A4;
	Sun, 12 Feb 2023 04:24:35 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: Clipboard in gnome
In-reply-to: <mailman.37.1676148746.1039589.blinux-list@redhat.com>
References: <mailman.5776.1676049044.8169.blinux-list@redhat.com>
 <mailman.6032.1676051129.8177.blinux-list@redhat.com>
 <mailman.5817.1676055329.8175.blinux-list@redhat.com>
 <mailman.5717.1676057804.8176.blinux-list@redhat.com>
 <mailman.47.1676143991.1039597.blinux-list@redhat.com>
 <mailman.37.1676148746.1039589.blinux-list@redhat.com>
Comments: In-reply-to Linux for blind general discussion
 <blinux-list@redhat.com>
 message dated "Sat, 11 Feb 2023 20:52:21 +0000."
MIME-Version: 1.0
Date: Sat, 11 Feb 2023 22:24:16 -0600
Message-ID: <mailman.53.1676175874.1039595.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-ID: <8406.1676175855.1@wb5agz.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I may have found something much better than diodon or clipit.
This clipboard manager is called gpaste so, in debian, it's apt
install gpaste and what you get is a utility called gpaste-client.

	This little jewel can be called using the good old
command line and it produces ASCII text output.  If you want to
save that into a file, you need to remove the checksums which are
sent as the first field and I have no idea yet what a multi-line
file looks like but I was immediately impressed when I saw 6 test
clipboard saves I had made.

	I could get diodon to show them on the screen but it has
no way to export the lines in to a file unless you do something
exotic to the --display= option.  Unfortunately, the man page for
diodon is about 1 screen and it's kind of a one-trick pony which
may do something very well but I'm not sure yet what that is.

	So, if you have this installed on your system, you run it
from either a text-only command line or your terminal window and
type

gpaste-client history

which spits out all the clipboard saves you have.  I piped it
through awk, telling awk to print $2 since each line in this case
was free of spaces.

	Obviously, this won't work for images and multi-word
files containing spaces but a little awk, sed and or perl should
yield something useful.  This is infinitely more useful as a tool
than the other two clipboard managers I have been trying to use
all day.

	There was an earlier posting from Tim who could get this
sequential output with xclip but I never got that to happen.  I
may be doing something wrong, because it turns out I was not
quite getting the syntax right to actually store entries in the
gnome clipboard.

	What you end up doing looks like

#!/bin/sh
cat testfile1 | xclip -sel clip
cat testfile2 | xclip -sel clip
cat testfile3 | xclip -sel clip
cat cbmail | xclip -sel clip
cat tenant | xclip -sel clip

	The -sel clip part means -sellections clipboard

	In other words, the translation of one of these lines
could be read as follows:

cat testfile1 | xclip -sellections clipboard

xclip is the conduit through which your file contents gush to the
actual gnome clipboard.

If you can get and run gpaste-client, you might like it.

Martin McCormick

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

