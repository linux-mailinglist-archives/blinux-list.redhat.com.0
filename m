Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AA66EFAFB
	for <lists+blinux-list@lfdr.de>; Wed, 26 Apr 2023 21:23:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682536992;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zCwF4ZvSyA6yICpnsGNZgwG030KNfsyDNBYNWMvEB8w=;
	b=Dl3T1Oe9+gtzh9fZyoHcQS5h5htuWQTFc6q1hot0C9Xf7C4ExF/u0iS/75L1cpiRQNoQrm
	aFq8wjLIEXIyuo3F/oixafsm8Y/M9SfBGe7Klt6E+xEffawUUSX3GAFNe0NMB/yQmhsJ6x
	69PAwx6wyV++MgEPlHeUWRFc/OlY13g=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-231-H9S_NfRtPzuIbOJuouwvWg-1; Wed, 26 Apr 2023 15:23:10 -0400
X-MC-Unique: H9S_NfRtPzuIbOJuouwvWg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 83E14884341;
	Wed, 26 Apr 2023 19:23:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 98AE7C15BAE;
	Wed, 26 Apr 2023 19:22:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DA9141946A48;
	Wed, 26 Apr 2023 19:22:57 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
Date: Wed, 26 Apr 2023 15:22:49 -0400
Subject: Configuring terminal and referencing username in bash scripts.
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <mailman.1671.1682536977.2351823.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Okay, so I've been using a ~/.bash_profile file with the following contents:

rm -f ~/.bash_history
export PS1='$(tty | sed 's#^/dev/tty##')\$'
export PATH=~/Programming/bash-scripts:$PATH

To clear the command history from the previous session, change the
prompt to something extremely short instead of the default user@host
/path/to/working/directory, and to add the directory where I store my
bash scripts to my path.

It works when logging into the console, but I recently bought a new
desktop and decided to give running a full desktop a go since I'm no
longer running a 12-year-old CPU with 4GB of RAM, and whichever
terminal emulator Debian Mate uses by default is clearly ignoring
~/.bash_profile.

So is there somewhere I can put the above lines so they'll besourced
both when logging into a text-only console and when launching a
terminal emulator?

Also, I have some scripts to automate sshing into some remote hosts or
mounting the remote filesystems locally, and part of it involves
creating a mounttt point that needs to be chown to my user. Is there a
shell variable I can use to make these scripts work for any user
instead of needing to edit the script to use the name of the user I'm
logged in as?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

