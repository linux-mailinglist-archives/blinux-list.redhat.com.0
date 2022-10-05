Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6645F5BE0
	for <lists+blinux-list@lfdr.de>; Wed,  5 Oct 2022 23:46:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665006397;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EGX8XMp5ee3xDHIkTnkO1pNk3v17mq4OqMyI9GLGs3A=;
	b=DbHito+Xh+w+Npgj42bdytHlrgaZTlU7wGjcZhXTGpoWl9KobJqztsgglfX+1yFIv7vM2B
	hY1hOziKy+zHrTP4dnG458t+AS70mok+W6Sbf3Ot2wYbxmEvydUMBOsEydOb9xG2G4sx8F
	Vxgw3KT+s2J4BeSHECVSdzSciQR3xmM=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-518-BhAolneZNzCF39ntFtoMLg-1; Wed, 05 Oct 2022 17:46:34 -0400
X-MC-Unique: BhAolneZNzCF39ntFtoMLg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 022073C0F674;
	Wed,  5 Oct 2022 21:46:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4352F17585;
	Wed,  5 Oct 2022 21:46:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A095619433A5;
	Wed,  5 Oct 2022 21:45:21 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.5759.1665005512.6083.blinux-list@redhat.com>
References: <mailman.5306.1664889720.6075.blinux-list@redhat.com>
 <mailman.5193.1664891202.6080.blinux-list@redhat.com>
 <mailman.5272.1664915489.6083.blinux-list@redhat.com>
 <mailman.5680.1664947080.6075.blinux-list@redhat.com>
 <mailman.5502.1664977583.6083.blinux-list@redhat.com>
 <mailman.5759.1665005512.6083.blinux-list@redhat.com>
Date: Wed, 5 Oct 2022 21:45:14 +0000
Subject: Re: tdsr
To: blinux-list@redhat.com
Message-ID: <mailman.6159.1665006321.6075.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

~/.bash_profile
~/.bashrc
~/.bash_login

are all files that can be used to configure a console log-in for a
given user, but not everyone has all or even any of these files.

I personally only have a .bash_profile file, and it only has three lines in it:

The first line deletes .bash_history, clearing my command history.
The second configures my command prompt so it consists only of the
number of the active tty and a dollar sign instead of the typical
user@host /path/to/working/directory $ prompt that is so common and
wastes a lot of time being read by my screen reaer.
The third adds the directory where I store my personal bash scripts to
my path so I can launch them from anywhere.

I don't know if there are any format requirements for .bash_login, but
it sounds like you don't have one, and the cinfguration suggested
might be as simple as creating a new text file in your editor of
choice, adding the suggested lines and nothing else, saving it as
.bash_login, and then logging out and back in.

I'm also not sure what the functional difference between
.bash_profile, .bash_login, and .bashrc is.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

