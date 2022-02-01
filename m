Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D2A4A55D5
	for <lists+blinux-list@lfdr.de>; Tue,  1 Feb 2022 05:12:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643688747;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jC2EBjvZukU/yquW0cxXRn4eqQf0+1pHg6X0z8+DkPQ=;
	b=OgcAfE5iW8xi9yv+DaeMtLjGbArOt23RLTshphL0TY00lAz/ii5Inrm6T8l0xDfyJbR5RN
	5l45XnlzcJ/lwV7Qm0rG0jgSL7iaKWlTV3KVIlpH3nb3lomUq+V2Ae0DXl9FO6gKhWtgp+
	veeevD/xda84iAWxrS/NZoaPeqjvWI0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-410-lnKkAQTbObyrnP6RGvOI0Q-1; Mon, 31 Jan 2022 23:12:22 -0500
X-MC-Unique: lnKkAQTbObyrnP6RGvOI0Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 263ED1083F60;
	Tue,  1 Feb 2022 04:12:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 32E0F46997;
	Tue,  1 Feb 2022 04:12:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5E7EE4BB7B;
	Tue,  1 Feb 2022 04:12:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 2114C0rX002342 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 31 Jan 2022 23:12:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BB03540CFD16; Tue,  1 Feb 2022 04:12:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B6D9340CFD07
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 04:12:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9AE8B3C01C09
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 04:12:00 +0000 (UTC)
Received: from st43p00im-zteg10072001.me.com (st43p00im-zteg10072001.me.com
	[17.58.63.167]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-567-E8fqH1vlM6CcbNE78nIHow-1; Mon, 31 Jan 2022 23:11:58 -0500
X-MC-Unique: E8fqH1vlM6CcbNE78nIHow-1
Received: from smtpclient.apple (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-zteg10072001.me.com (Postfix) with ESMTPS id B7BD0B40660
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 04:11:57 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Thunderbird -t command
Date: Mon, 31 Jan 2022 23:11:56 -0500
References: <a755c608-c042-970f-493a-bcb1f70aa709@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <a755c608-c042-970f-493a-bcb1f70aa709@gmail.com>
Message-Id: <71E97A73-3094-4FB1-84F7-E06276EFF9F2@icloud.com>
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
	=?UTF-8?Q?2903e8d5c8f:6.0.138, 18.0.816,
	17.11.62.513.0000000_definitions?=
	=?UTF-8?Q?=3D2022-01-17=5F04:2020-02-14=5F02, 2022-01-17=5F04,
	2021-12-02?= =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=821
	suspectscore=0
	clxscore=1015 spamscore=0 phishscore=0 malwarescore=0 adultscore=0
	bulkscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.12.0-2009150000 definitions=main-2202010021
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 2114C0rX002342
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,
You can copy the .Mozilla folder from your home directory. But you will need to show hidden files.
Thanks,
Rob

> On Jan 30, 2022, at 12:43 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Hi,
> 
> I lost an instruction email with how to move Thunderbird profiles, it was thunderbird -t and something. Can you help please?
> 
> Thanks,
> 
> Pavel
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

