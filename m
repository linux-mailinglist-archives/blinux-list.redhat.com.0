Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 602C53D50C4
	for <lists+blinux-list@lfdr.de>; Mon, 26 Jul 2021 02:31:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627259495;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GyCO1RvGB6kw21i7oPalzK1JsZFNp5zXWKDlL1MwKhA=;
	b=ME3ZUT/UlVSxNG6CeAdlwcoQcs4TZ/bIpzavVeBWbvZTTSN8886EeD+U6OgsGN4MdmYoVm
	0LPyVwks1t47ZfSWmdNR3BbmbC3zKbCRePigVE9oY9njBgZwdAMjYts4HPH2ifLsLK2AyH
	f8JDb7EyWk8JxOVrZAl5SUfreRkCl9U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-281-0lZxoXJ7MDuTxQtlFaYCCA-1; Sun, 25 Jul 2021 20:31:33 -0400
X-MC-Unique: 0lZxoXJ7MDuTxQtlFaYCCA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 116EAC7400;
	Mon, 26 Jul 2021 00:31:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B0D1F5C1A3;
	Mon, 26 Jul 2021 00:31:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AAB324BB7B;
	Mon, 26 Jul 2021 00:31:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16Q0NToW003157 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Jul 2021 20:23:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 01E4F111143F; Mon, 26 Jul 2021 00:23:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F1A39111143C
	for <blinux-list@redhat.com>; Mon, 26 Jul 2021 00:23:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 247C7866DF4
	for <blinux-list@redhat.com>; Mon, 26 Jul 2021 00:23:25 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
	[209.85.222.177]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-331-bi7S2fcrM_2bjlcJ1IrNHw-1; Sun, 25 Jul 2021 20:23:22 -0400
X-MC-Unique: bi7S2fcrM_2bjlcJ1IrNHw-1
Received: by mail-qk1-f177.google.com with SMTP id t68so7314190qkf.8
	for <blinux-list@redhat.com>; Sun, 25 Jul 2021 17:23:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=BC+Fy3lhVwLCGlPlWPakgseL74lJbvcZk7yPBX9Cnp4=;
	b=mkbUvnGfxzh+OZDjM+WIVGR3WGLP9LzCLHKk1qbrx/RuvXuFzSkBkwWqgkMeJKUwcl
	yHyRvPOsH7vMXDE6szP3uSTVKGVe5jzjRXwvKDtdya3InpgS5rNtUqJ7wfp864Qs7uwP
	xnRKR+2W3B49aRLYb8RAD5bFT6NZiTONf21Ij8snsWXr+Zct3QLXzoAvUa7aWn/U9LG+
	LefFNPqfyYQnNJwGPdx2GXbivUug0q1MTN1eJlB5qClpegGnz2MV4K3noqiydx0eqwRA
	S32ADKhsND8+ZrHY5LFV32GVn7aSggetBTgGDN8ASmit3JfK9c74sZysjFRIjJC0+Rrv
	x82g==
X-Gm-Message-State: AOAM533uciO9Hy4ss4Pq7OHI/iex7Ll9UH2VvGMxNoEuH45MIAEY/+6H
	fzYBgFGBS8SwUj9laHoXNCfvOPcBSYybOVslxnxHztCgNQs=
X-Google-Smtp-Source: ABdhPJyMsZogNrbwUndqUJJ2C0H3EXd4d7ArDuSNWQ243GsjQwAaMa5MKLF1fQf22egx47NEulOO93n4Ge0Wgt3TvQM=
X-Received: by 2002:ae9:ef10:: with SMTP id d16mr15428894qkg.264.1627259001951;
	Sun, 25 Jul 2021 17:23:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6214:b07:0:0:0:0 with HTTP; Sun, 25 Jul 2021 17:23:21
	-0700 (PDT)
Date: Mon, 26 Jul 2021 00:23:21 +0000
Message-ID: <CAO2sX33Q5FJiK1n+VH9A4anFxyRwbZ0oAyQoSVskfavGbZWzQA@mail.gmail.com>
Subject: Accessible Google Drive Client?
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Okay, so recently, a creator on Kickstarter shared some PDFs via
Google drive, and for the life of me, I can't figure out how to
initiate the downloads in Firefox, and more recently, someone
suggested Google Drive as a means of sharing some files that are too
big for sending as e-mail attachments, but I have my doubts that'll be
any more accessible through a web interface.

I decided to do a Google search for stand alone, command line clients,
and managed to install rclone from apt and drive-cli from pip, but
have had no luck in figuring out either.

Ideally, I'd like a command line utility that could just read the
google drive link to a folder from a file and download everything in
said folder or a browser extension that cuts through the JavaScript
and other rich-web malarkey to present me plain download links...

A command utility to copy a local folder to Google Drive that then
saves the share link to a text file or some other console screen
reader friendly means of sharing a large amount of data would be nice
too.

Anyone have any suggestions?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

