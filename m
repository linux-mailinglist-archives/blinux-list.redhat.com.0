Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EBE46ED25
	for <lists+blinux-list@lfdr.de>; Thu,  9 Dec 2021 17:35:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639067715;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4VgPNUQXnJ7xTl61VH54eRv0O7YHKpsNhkxSaEepD3s=;
	b=W4on18O+WpAOXLS7RjjbdHg3VCLInwXaFDOhcfreZ+qiLr6DNjMI3VQ9QjEcKHlf1yfEmI
	84GTTd91tPeCMqkmO3bsTAbjYsLzTJnFVUQijZw2plm5B3seqIqEDT9dm52+MJFyQR4YNk
	dSHnOovpoJvsfrITRYuRp3vJXZrcyMY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-324-qnHpH3LkNVW8UUNylRcCgg-1; Thu, 09 Dec 2021 11:35:11 -0500
X-MC-Unique: qnHpH3LkNVW8UUNylRcCgg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 72115802E3B;
	Thu,  9 Dec 2021 16:34:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4D52B4ABA1;
	Thu,  9 Dec 2021 16:34:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8EC8E4A7C8;
	Thu,  9 Dec 2021 16:34:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B9GYCor017116 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 9 Dec 2021 11:34:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B9EAD40C1241; Thu,  9 Dec 2021 16:34:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B60AD400E127
	for <blinux-list@redhat.com>; Thu,  9 Dec 2021 16:34:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9BD18803CE8
	for <blinux-list@redhat.com>; Thu,  9 Dec 2021 16:34:12 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
	[209.85.160.170]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-451-yH2lXo4aOp2oEZTlV24UDA-1; Thu, 09 Dec 2021 11:34:10 -0500
X-MC-Unique: yH2lXo4aOp2oEZTlV24UDA-1
Received: by mail-qt1-f170.google.com with SMTP id t34so5819866qtc.7
	for <blinux-list@redhat.com>; Thu, 09 Dec 2021 08:34:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=n3T4GlQ3ASwUUgsKxuOcvJpYbWDY4rgcinHCOnZuFYs=;
	b=Ted3QoA1Nif0V6ijSJ/xoHpNXi6kXcuNEIXLlkca92X/60IiNi9QJxaEOYY44D0xGf
	pCwDk9AyxU03dFsX7htYFv7yInub2H8hU+bT4VSH9pEZNIGe+xeO0cM+AFBFHoXXB3FA
	FX1nyT3Ncn2QHuIDITh0VnNNkZGQ29xvQGx8pEKEs0dtU96ac2Hs+YhLbW/tpW/ynjSb
	woRrUeOTc4fDZh/kHLHiU0tgQicpJ/7jjTAqoxElmRdK5cZcIWZS0gl3BE5tSQSGzMBE
	xeh1FG6iGMrxtVryMnfLTcogOXe1wEBVX11Ti0wPegTg1dzRjCMzDwlsdu8QXuPLGtsJ
	Uogg==
X-Gm-Message-State: AOAM531C+B0+hzte68IJBVrkHqjIDhns2B1QCS8NsHB1d3vlqxlu962p
	Nb3TbNnBj/RTTSPLfp64Rpowy0VGWqSqe9MdNUw0QbBp
X-Google-Smtp-Source: ABdhPJyWQDX1gYK7Dgso+8lJUcf7cSfvyJ/g8EPtYEWtTIijrmt7R9d7yGIwRYiEuTad9pwfmNZZy68rvfibMCZn4A0=
X-Received: by 2002:a05:622a:1114:: with SMTP id
	e20mr20203474qty.427.1639067649990; 
	Thu, 09 Dec 2021 08:34:09 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP;
	Thu, 9 Dec 2021 08:34:09 -0800 (PST)
In-Reply-To: <f342b0c4-5ca4-0f8d-3e04-60c3631c8976@icloud.com>
References: <f342b0c4-5ca4-0f8d-3e04-60c3631c8976@icloud.com>
Date: Thu, 9 Dec 2021 16:34:09 +0000
Message-ID: <CAO2sX31QLOXaapae2on02hA6g1VHQn54cfAEmY3ykaVHBasrbw@mail.gmail.com>
Subject: Re: .sh files not opening in terminal
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

>From context, I'm guessing you're trying to open them from a graphical
file manager instead of trying to run them in a terminal emulator or
from the console.

I haven't used a graphical file manager in close to a decade, but part
of me says clicking on a script file and it opening in an editor
should be the expected behavior.

The usual way of running a script is to open a terminal emulator(if
using a graphical desktop), change to the directory the script is in,
and typing:

./scriptName.sh

This assumes that the script contains the appropriate shebang line(a
line beggining with a pound sign and exclamation mark, followed by the
path to the appropriate interpreter(e.g. /bin/bash for bash scripts)
and the user has execute privileges on the script. if either of these
are missing, you need to invoke the appropriate interpreter with the
script as an argument(e.g. bash scriptName.sh for a bash script
without the correct shebang line or permissions).

That said, it's possible the graphical file manager you're using might
have run, execute, or something similar in its context menu... though
depending on what the script does, this might result in a terminal
window opening, printing output, then closing before you can read the
output.

Also, if you have a bunch of scripts with the correct shebang line and
execute permissions, you can put them all in a folder, add that folder
to your path, and then run any script in that folder in a terminal
emulator from anywhere in the directory tree by typing

scriptName.sh

Which can be done by adding the following to ~/.bash_profile:

export PATH=/path/to/user/scripts:$PATH

Which I'll admit to not truly understanding since I added it to my own
~/.bash_profile months, if not years ago and its the kind of thing you
set then forget how its done until you have to do it again.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

