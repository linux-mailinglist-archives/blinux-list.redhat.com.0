Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 49314391221
	for <lists+blinux-list@lfdr.de>; Wed, 26 May 2021 10:16:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1622017011;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DV2yWqY9r7ZtaaZZtbo86cb0tbCCRTsytF8nC6FpNQA=;
	b=UT0rw+djnjLq3QyMD8lM9ejjiBOGlDg1H0vhpl1VQpi3nyp1WDiuNOBSdON9QI5zu53Wzi
	zKCI+JysHESei5npZbQLLctAkVVmrpRLPcrTT5VhFvIZ2JdfSKbHCCUFyHIWoIZ2pz7NEC
	r+ybfCzwt+BIJUSIQ8ko8iiqOTyF17Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-147-oumqs3JJMY6QekY1H8x6UA-1; Wed, 26 May 2021 04:16:48 -0400
X-MC-Unique: oumqs3JJMY6QekY1H8x6UA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1ADB2107ACC7;
	Wed, 26 May 2021 08:16:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9B5555946E;
	Wed, 26 May 2021 08:16:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 098F31800BB8;
	Wed, 26 May 2021 08:16:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14Q8GRlP021120 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 May 2021 04:16:27 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 192D710F2703; Wed, 26 May 2021 08:16:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 141911000DB4
	for <blinux-list@redhat.com>; Wed, 26 May 2021 08:16:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1FC9A800B26
	for <blinux-list@redhat.com>; Wed, 26 May 2021 08:16:22 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-267-7-8SasyXP3edSedo1QGdAQ-1;
	Wed, 26 May 2021 04:16:19 -0400
X-MC-Unique: 7-8SasyXP3edSedo1QGdAQ-1
Received: from ici.slint.fr (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 698F7A2C38
	for <blinux-list@redhat.com>; Wed, 26 May 2021 09:16:00 +0200 (CEST)
Subject: Re: Arch linux not in boot menu
To: blinux-list@redhat.com
References: <20210526.014710.170.3@[192.168.1.100]>
Message-ID: <6c811774-534f-56c9-fd1f-08eda5004689@slint.fr>
Date: Wed, 26 May 2021 10:16:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20210526.014710.170.3@[192.168.1.100]>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,

As Alexander pointed out, you don't miss anything. Let me elaborate a bit.

The Slint  installer runs grub-install which among other things writes 
an EFI OS
loader grubx64.efi in an EFI System Partition, that you can see from 
Slint as
boot/efi/EFI/slint/grubx64.efi and a boot entry in the firmware menu, 
which is
actually a link to grubx64.efi.

grubx64.efi looks for the grub configuration file grub.cfg in the /boot/grub
directory of the system from which grub-install ran (or or from the 
directory
argument of the --boot-directory option of the grub-install command).

So if you really want a boot entry for Arch in the firmware's boot menu 
you will
need to write an EFI OS loader able to boot Arch in ten EFI system 
partition, to
which this boot entry would link to. This can be done several ways, but...
Why would you need that, as long as the GRUB menu built from Slint allows to
boot Arch?

As an aside, in Slint you can run grub-emu to display the grub menu that 
will be
displayed at next boot and check the boot entries it includes.

This comes handy for blind users as the menu displayed by grub-emu is 
accessible
to the blind, but not the menu displayed when booting.

Also I am guilty of something called EFI3M 
https://github.com/DidierSpaier/EFI3M

Cheers,
Didier

On 26/05/2021 03:47, Linux for blind general discussion wrote:
> I have 3 operating systems on the same disk. Windows, slint and, as of this morning, arch. Installed in just that order. The bios type is UEFI.
> Slint runs grub, so I did not install it in arch.
> After completing the arch install, I got back into slint and ran
> update-grub
> It found arch on /dev/sda7
> When  I ran
> efibootmgr
> Arch was not listed there, however.
> What step did I miss?
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

