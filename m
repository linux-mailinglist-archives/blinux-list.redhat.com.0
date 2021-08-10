Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id D986A3E7C17
	for <lists+blinux-list@lfdr.de>; Tue, 10 Aug 2021 17:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628609054;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zY4OeDgGmXdvG2Ft2JBdprPOWGUGu2OWwKD99XEIGyY=;
	b=Fj7Au1ACQnVLGeG91ATp0jIAM7RQVd98qN0zc2Ab7Io2FTNYXJ9RLDUjCrmTFXkbJ7g18G
	+DgB/jSR5D1ktd95GM7Dgr71VyPxu+cwuTo00n1s5Sd1FjK9HrfRNVDgksZ/lqBPXwooSj
	lWDdiEM51CkHKahByTxWzaT+9eVCgVs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-467-JJKe0J6QN12TPe7xNp4qTQ-1; Tue, 10 Aug 2021 11:24:13 -0400
X-MC-Unique: JJKe0J6QN12TPe7xNp4qTQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B4342344B1;
	Tue, 10 Aug 2021 15:24:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BED2B136F5;
	Tue, 10 Aug 2021 15:24:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 41D67181A2A6;
	Tue, 10 Aug 2021 15:24:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17AFNpCl007933 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Aug 2021 11:23:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AEA4C44007; Tue, 10 Aug 2021 15:23:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AA175DAF34
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 15:23:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 16A47800159
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 15:23:49 +0000 (UTC)
Received: from mail.schoeppi.net (mail.schoeppi.net [193.41.226.221]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-65-XwFuQE_eNWmiK63WxWHGYg-1; Tue, 10 Aug 2021 11:23:47 -0400
X-MC-Unique: XwFuQE_eNWmiK63WxWHGYg-1
Received: from k.n5t.de (unknown [172.19.7.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits)
	server-digest SHA256) (Client did not present a certificate)
	by mail.schoeppi.net (Postfix) with ESMTPS id 495352AE152
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 17:23:45 +0200 (CEST)
Date: Tue, 10 Aug 2021 17:23:44 +0200
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Help, I need a Windows VM for my work
Message-ID: <20210810152344.pj27ugpajbviww4w@k.n5t.de>
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<6b512da3-e808-5c33-b0d3-700b55397580@slint.fr>
	<64366d3c-fdd0-3b9a-b771-7dbc6d720f4e@slint.fr>
	<20210810143027.nrhkrccb5lxpnjzm@k.n5t.de>
	<7dd4954e-8e84-dbd5-e289-68b54addd195@slint.fr>
MIME-Version: 1.0
In-Reply-To: <7dd4954e-8e84-dbd5-e289-68b54addd195@slint.fr>
User-Agent: NeoMutt/20180716
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Didier,

On Tue, Aug 10, 2021 at 04:44:27PM +0200, Linux for blind general discussion wrote:
>I will but your email address is hiddee by the list manager.
>
>You are Christian Schoepplein, right?

Yes, I am Christian. You can reach me via chris@schoeppi.net .

Thanks once more for your support and all the best,

  Schoepp

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

