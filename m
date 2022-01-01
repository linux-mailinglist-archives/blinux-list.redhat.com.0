Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A9D482855
	for <lists+blinux-list@lfdr.de>; Sat,  1 Jan 2022 20:34:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641065683;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1Cl1Q2hlzRV+MLlgQYv3+J7w9p0T7/DIdXYFT18iKFs=;
	b=IRX/UMb4PEI2gOVXHksSdmJZEbQVI506W+61PXY6hNTmmqNGszdDK2ZR13QHzzGzyqUgAA
	lGF4hZRIhGfkxflxVkOxH9Dp6DFBZ7BbN4knR65jIhxUYuaKRZfw9TlD51sNFA2MYJzmpY
	PqspKlt8HMDpVab6cx3CsfXjKPu+NjA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-649-T7BhZA88PvOsJwexPM_Ucg-1; Sat, 01 Jan 2022 14:34:39 -0500
X-MC-Unique: T7BhZA88PvOsJwexPM_Ucg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1F8B91853020;
	Sat,  1 Jan 2022 19:34:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 07FE45BE0E;
	Sat,  1 Jan 2022 19:34:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DC91A4BB7C;
	Sat,  1 Jan 2022 19:34:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 201JYW5o015723 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 1 Jan 2022 14:34:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A23DD53CE; Sat,  1 Jan 2022 19:34:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9CE2553C6
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:34:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 94A793806721
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:34:29 +0000 (UTC)
Received: from mxd1.seznam.cz (mxd1.seznam.cz [77.75.78.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-121-Ege_Kh-rMAmt9taj0QRnXw-1; Sat, 01 Jan 2022 14:34:27 -0500
X-MC-Unique: Ege_Kh-rMAmt9taj0QRnXw-1
Received: from email.seznam.cz
	by email-smtpc12a.ko.seznam.cz (email-smtpc12a.ko.seznam.cz
	[10.53.11.105]) id 1d38054e08a056141cd2f452;
	Sat, 01 Jan 2022 20:34:25 +0100 (CET)
Received: from [192.168.1.142] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay30.ko.seznam.cz (Seznam SMTPD 1.3.134) with ESMTP;
	Sat, 01 Jan 2022 20:34:22 +0100 (CET)
Subject: Re: Recovering shift deleted data
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <7c2c5806-4581-dc53-8e4e-750d9098398b@seznam.cz>
	<963111a5-9514-068d-db29-c0883322600a@gmail.com>
	<27d3f316-bcd0-3ea4-1277-ab5d1318153c@seznam.cz>
	<f018d99b-f81d-1602-b4e1-0dbdf65f6b24@seznam.cz>
	<b50a253-9386-d575-23e1-25d53ffb3fb5@hubert-humphrey.com>
Message-ID: <41e20a32-82ef-b9a4-998f-b5628ad42c60@seznam.cz>
Date: Sat, 1 Jan 2022 20:34:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <b50a253-9386-d575-23e1-25d53ffb3fb5@hubert-humphrey.com>
X-szn-frgn: <true>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello The files had numbered names, from dictaphone. I don't know, how 
names they are.

Dne 01. 01. 22 v 20:31 Linux for blind general discussion napsal(a):
> Well, since you haven't restarted, you can run a "locate" on some part 
> of the file name-and-pipe to a file. At very least you will have a list 
> of these files you may be able to find elsewhere or grab from youtube.
> Chime
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

