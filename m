Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2039D508A67
	for <lists+blinux-list@lfdr.de>; Wed, 20 Apr 2022 16:11:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650463911;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NfEu4EpTp5zUCcuHmSjwFzq4j2CrHXNDqbex/cfBkco=;
	b=HMY01e74voQ0hGswcVqbEyMFaXrgWKBz497DZ/yrZDftNY9h3NipMac4cY9iv+s9Kw9zxT
	1ZPYaNeSQEUV0Jk4OWHOiWNy3CggYgJXa/61Lo0D2fqOqj7tQH3Pa/gkQxZCKKB26m80zK
	p2EYWQ2i9fk1OtaL0/nXuYwRhk3SCI0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-13-pcu2qbdoOgqKd4Kfag57BA-1; Wed, 20 Apr 2022 10:11:47 -0400
X-MC-Unique: pcu2qbdoOgqKd4Kfag57BA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BEF5A80005D;
	Wed, 20 Apr 2022 14:11:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6B564404D2C4;
	Wed, 20 Apr 2022 14:11:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 79B361940347;
	Wed, 20 Apr 2022 14:11:42 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 20 Apr 2022 15:11:35 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Textbased installation of VMs in VirtualBox
References: <mailman.9706.1650458473.111206.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.9706.1650458473.111206.blinux-list@redhat.com>
Message-ID: <mailman.9836.1650463902.111210.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'd suggest something like Vagrant for it if you're comfortable with editing the Vagrantfile it generates

Once you have Vagrant installed, you'll do vagrant init in your chosen directory and it'll make a Vagrantfile which holds the config for that VM. Once you've checked it over, just do vagrant up&&vagrant ssh to first boot the VM then connect to it via a SSH connection to the VM

Hopefully this is something akin to what you're after, and yes it looks for virtualbox to run the VMs and starts them up in headless mode as well, so you could set it up via SSH and then enable the GUI or work with the VM however you want afterwards. Fair warning, it gives you a bare bones box and it's a blank canvasOn Wed, Apr 20, 2022 at 02:35:42PM +0200, Linux for blind general discussion wrote:
> Hi,
> 
> at work we are using VirtualBox and I like to install fresh linux VMs with 
> the latest Ubuntu LTS.
> 
> With libvirt I can use the virt-manage command and when the installation is 
> preseeded the whole installation is fully automated. If also a serial 
> console is enabled  I can watch the installation process and log into the VM 
> when installation is finished. All can be done without sighted help.
> 
> With VirtualBox I can create a VM but is there also the possebility to 
> install the VM in textbased mode. How do you install linux VMs with 
> VirtualBox without sighted help? If this is possible also preseeding should 
> be no problem...
> 
> Any hint how to work with VirtualBox is very apriciat ed.
> 
> Ciao and thanks,
> 
>   Schoepp
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

-- 
Jace's words are up there. Quoted and old messages below this point

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

