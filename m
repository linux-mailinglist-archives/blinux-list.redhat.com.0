Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BCF494406
	for <lists+blinux-list@lfdr.de>; Thu, 20 Jan 2022 01:11:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642637517;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ncWfzckDQ7gFZ4e2CpxG5JSIVsAlbRBgIl5GlqMsXTc=;
	b=hZeLQ25lu8EKUzOMCyR+pZQcuf5jiNYTCwdvcfWFINYoWkJxphu4ET3KOivNdD+Bpqo7bg
	q8NS7yZJ1A5eg0dXNVpU635+1UNN5iFhDetDmiy3ZEAJfAlrF1Uwn6UGUEjo9lvoYePPxZ
	fg2YfZGvZCHkpZhy6w0OrUxSywC8CiQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-220-TvaN6EWeNWy1dtZQFZScCg-1; Wed, 19 Jan 2022 19:11:54 -0500
X-MC-Unique: TvaN6EWeNWy1dtZQFZScCg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 107BE18397B3;
	Thu, 20 Jan 2022 00:11:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1761B5F920;
	Thu, 20 Jan 2022 00:11:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AE8C91809CB9;
	Thu, 20 Jan 2022 00:11:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20K09sep008559 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Jan 2022 19:09:55 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BE1B376E9; Thu, 20 Jan 2022 00:09:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B54D676E8
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 00:09:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9DDCA28F99DA
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 00:09:49 +0000 (UTC)
Received: from st43p00im-ztbu10073601.me.com (st43p00im-ztbu10073601.me.com
	[17.58.63.184]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-668-DJSVnvWEPq2PAIV1gYobdA-1; Wed, 19 Jan 2022 19:09:47 -0500
X-MC-Unique: DJSVnvWEPq2PAIV1gYobdA-1
Received: from smtpclient.apple (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-ztbu10073601.me.com (Postfix) with ESMTPS id 1A8B45A0A38
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 00:09:46 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: cell phone industry practices
Date: Wed, 19 Jan 2022 19:09:34 -0500
References: <63f587bb-c045-5b27-4252-26d68fd14c7@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <63f587bb-c045-5b27-4252-26d68fd14c7@panix.com>
Message-Id: <63B06F55-87DA-433A-8D57-B216A22FC21A@icloud.com>
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
	=?UTF-8?Q?2903e8d5c8f:6.0.425, 18.0.572,
	17.11.62.513.0000000_definitions?=
	=?UTF-8?Q?=3D2022-01-14=5F01:2022-01-14=5F01, 2020-02-14=5F11,
	2021-12-02?= =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
	mlxscore=0
	suspectscore=0 bulkscore=0 adultscore=0 phishscore=0 clxscore=1015
	spamscore=0 mlxlogscore=999 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.12.0-2009150000 definitions=main-2201190128
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20K09sep008559
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,
Check this out.
The question is, is it, or can it be made accessible.
https://www.pine64.org/pinephone
Thanks,
Rob

> On Jan 19, 2022, at 6:40 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Does anyone know of any cell phone ready Linux operating system that comes
> with an accessible desktop environment that has active support
> I'm curious about this as a result of cell phone industry practices.
> Specifically, no last security update date and no operating system update
> date is on packaging or listed on any of the cell phone screens.  This
> means if your phone is compromised once these two dates have passed it's
> time to throw your phone in the trash since even if you do a factory
> reset, the phone can be easily compromised again.
> Even if anything like this is available it will be a challenge to find
> competent technical support to replace the operating system on the phone
> and hook it up with the Linux provider's package repositories.
> 
> ?
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

