Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F34448C645
	for <lists+blinux-list@lfdr.de>; Wed, 12 Jan 2022 15:43:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641998607;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CVt660LWFDgp+RY4MjnvPXeHysXWUD051PNYA3lM0ZQ=;
	b=YJUSz0vX6SjxdGDjMwtM3TGnwTzBeCSY8sizeZA0Zq006GeD4/aOudRGa0ZyIgR2fAv4Db
	sXT6HoJFyZ/4pfzm/GheW27RH8uLR3pQdd9gADYW7D4v2e6C83yxRaKiBX3RDG2j0Xe9V1
	7hI08R9r/PQl7gS2Ru5DbgoueKyTyyg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-177-NjNQBANBPuGceFwopOuPvw-1; Wed, 12 Jan 2022 09:43:23 -0500
X-MC-Unique: NjNQBANBPuGceFwopOuPvw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C9EA56414A;
	Wed, 12 Jan 2022 14:43:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3461A7C40C;
	Wed, 12 Jan 2022 14:43:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ADD704CA93;
	Wed, 12 Jan 2022 14:43:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20CEh3BG020094 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 12 Jan 2022 09:43:03 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 78AD31121335; Wed, 12 Jan 2022 14:43:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 73F2F112133F
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 14:42:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DE1BD185A7BA
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 14:42:59 +0000 (UTC)
Received: from mxd1.seznam.cz (mxd1.seznam.cz [77.75.78.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-376-l6ELV49bOBO6GKqmJCJBhg-1; Wed, 12 Jan 2022 09:42:58 -0500
X-MC-Unique: l6ELV49bOBO6GKqmJCJBhg-1
Received: from email.seznam.cz
	by email-smtpc16a.ko.seznam.cz (email-smtpc16a.ko.seznam.cz
	[10.53.18.16]) id 56b47161432c223b575e807d;
	Wed, 12 Jan 2022 15:42:56 +0100 (CET)
Received: from [192.168.1.142] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay7.ko.seznam.cz (Seznam SMTPD 1.3.136) with ESMTP;
	Wed, 12 Jan 2022 15:42:53 +0100 (CET)
Subject: Re: MPV problem
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4f8b44c7-7955-ceb2-491f-b3a6de4cdda8@seznam.cz>
	<ff09d0ee-685d-97bc-4691-fb9ee4aa2fdf@gmail.com>
	<030518a4-9ddf-fb4f-61d8-a578520c902e@seznam.cz>
	<15e33618-54f2-8516-271c-a3b050dc6d20@gmail.com>
Message-ID: <7e483b15-919b-b9ef-6fe4-60cc39a6da71@seznam.cz>
Date: Wed, 12 Jan 2022 15:42:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <15e33618-54f2-8516-271c-a3b050dc6d20@gmail.com>
X-szn-frgn: <1d44b3d7-aa83-4d8e-bec2-326b77ad5b1a>
X-szn-frgc: <0>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

mp3 file from audio library.

Vojta.

Dne 12. 01. 22 v 14:27 Linux for blind general discussion napsal(a):
> You can try running the file in a terminal. When you save, the time you 
> saved and quit will be printed to the terminal above "Saving state." and 
> "Exiting... (quit)." Also, it could be a file format issue. What type of 
> file are you trying to play? Audio (mp3, ogg, opus, flac, wav, etc) or 
> video (mp4, webm, mpg, mkv, etc)
> 
> ~Kyle
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

