Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC21508852
	for <lists+blinux-list@lfdr.de>; Wed, 20 Apr 2022 14:41:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650458484;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YDpsVQH6SH3XqIJx/NaWzmgIRIxZ6QocS9ZWKbaM2Qg=;
	b=f6kg01tmfIIRWDVWXm1WgjDaIQ18OHhDSgqi+QISfOECLZzLoli/acEhGuOXj2x5Q/Z24m
	yVbrNVVzvXrbtda6Obup4WYjpvgQgdmzZeAoxPP9A8WzSJ2cEyqHR9au7Fthb5wt94rTIk
	EuI9uBhqiSFJOI1hhUsTELKZuhnUk9Q=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-611-nUvYUqcVOqCAiWjcIo0r2g-1; Wed, 20 Apr 2022 08:41:21 -0400
X-MC-Unique: nUvYUqcVOqCAiWjcIo0r2g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5901D185A7BA;
	Wed, 20 Apr 2022 12:41:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 99D48145BA51;
	Wed, 20 Apr 2022 12:41:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 201231940348;
	Wed, 20 Apr 2022 12:41:14 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 20 Apr 2022 14:35:42 +0200
To: blinux-list@redhat.com
Subject: Textbased installation of VMs in VirtualBox
MIME-Version: 1.0
Message-ID: <mailman.9706.1650458473.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

at work we are using VirtualBox and I like to install fresh linux VMs with 
the latest Ubuntu LTS.

With libvirt I can use the virt-manage command and when the installation is 
preseeded the whole installation is fully automated. If also a serial 
console is enabled  I can watch the installation process and log into the VM 
when installation is finished. All can be done without sighted help.

With VirtualBox I can create a VM but is there also the possebility to 
install the VM in textbased mode. How do you install linux VMs with 
VirtualBox without sighted help? If this is possible also preseeding should 
be no problem...

Any hint how to work with VirtualBox is very apriciat ed.

Ciao and thanks,

  Schoepp

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

