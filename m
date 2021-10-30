Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0C6440C3A
	for <lists+blinux-list@lfdr.de>; Sun, 31 Oct 2021 00:52:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635634342;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=84Ehz3wKjp8nzlgmT3411uKo0wjXaPPoMcDNkjRZv1E=;
	b=Pu2aCWh4YOwJJcuC8217fzMBQhZTkhnD43v6Bod8VldUdDe6MlaoZ6I0fjsf0onYuFpAUp
	8DkdTqx0BWHmtA/ZNJsG8qKN1YulIpRaiZT7z9MXJjTkzVeNpnSKUkE32w44fw8t6j3KMz
	q8nzqub/7WT2osi8AVcBKPq0vJ7uMVU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-307-I_72sDSnP9WRXxfzchF1RA-1; Sat, 30 Oct 2021 18:52:19 -0400
X-MC-Unique: I_72sDSnP9WRXxfzchF1RA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A42F35074B;
	Sat, 30 Oct 2021 22:52:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 64C8A5C1C5;
	Sat, 30 Oct 2021 22:52:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 090474A703;
	Sat, 30 Oct 2021 22:52:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19UMq8qO031890 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 30 Oct 2021 18:52:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C09251121315; Sat, 30 Oct 2021 22:52:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BC4141121314
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 22:52:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E79E6100B8C8
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 22:52:05 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-596-EZW_Y7S6Pnipys1MYpaINg-1; Sat, 30 Oct 2021 18:52:02 -0400
X-MC-Unique: EZW_Y7S6Pnipys1MYpaINg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HhZLB1VKVz3xj6
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 18:52:02 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HhZLB0r3Dzcbc; Sat, 30 Oct 2021 18:52:02 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HhZLB0Sg5zcbW
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 18:52:02 -0400 (EDT)
Date: Sat, 30 Oct 2021 18:52:01 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible Coconut speech at startup
In-Reply-To: <a2d6d9ae-4bb0-7d59-5edf-8e29d3da7736@hubert-humphrey.com>
Message-ID: <alpine.NEB.2.23.451.2110301850190.23502@panix1.panix.com>
References: <9F0E8E47-7471-495E-A98F-BCB9122EB801@gmail.com>
	<DA67F7C5-5947-4414-83A3-8E27FC9B60DB@gmail.com>
	<alpine.NEB.2.23.451.2110301529560.17098@panix1.panix.com>
	<578e1897-329a-e039-54cf-ca2869978df8@gmail.com>
	<alpine.NEB.2.23.451.2110301831520.776@panix1.panix.com>
	<a2d6d9ae-4bb0-7d59-5edf-8e29d3da7736@hubert-humphrey.com>
MIME-Version: 1.0
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

there is nmcli, but you have to know how to use that up front.  I don't
know of any menus in that software.  Menus are available in nmtui though
and that can be run from the terminal.


On Sat, 30 Oct 2021, Linux for blind general discussion wrote:

> Wondering if there are completely commandline ways of doing this? Actually
> reaching a similar menu from a commandline would be great, as its quite a
> hassle having to ask a hotel staffer to navigate a Linux graphical screen
> which they don't always understand. I would rather do this in Speakup. Thanks
> so much in advance
> Chime
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

