Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CE745938F
	for <lists+blinux-list@lfdr.de>; Mon, 22 Nov 2021 18:00:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637600417;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=F6JKb5rogtnsjcR3XrrO3KvAYiIdgvwHVxpfZuwnmtw=;
	b=DD1bXQzhY8jdWqpL+QvYH34sWHI/mWAem0/WDlWQH1SKgfcV3KIVEecul2eaZNqWG+GIqs
	KmVV9EuJTPY9Ad8meuwbbKRerM83sK6tc2hyKqYDDvSaSTtFNKvO/kS77ohqim0fpVzJfu
	A2UNkifhn0DUfXRazlFrr/ZJu4b7fJg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-159-fUXCjWV7OAOhlOzYykf29Q-1; Mon, 22 Nov 2021 12:00:15 -0500
X-MC-Unique: fUXCjWV7OAOhlOzYykf29Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 286AECC622;
	Mon, 22 Nov 2021 17:00:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 92B3B60C82;
	Mon, 22 Nov 2021 17:00:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D59C34EA31;
	Mon, 22 Nov 2021 17:00:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AMGxvnC028002 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 22 Nov 2021 11:59:57 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7FA7D404727C; Mon, 22 Nov 2021 16:59:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7B921404727A
	for <blinux-list@redhat.com>; Mon, 22 Nov 2021 16:59:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 619478022F4
	for <blinux-list@redhat.com>; Mon, 22 Nov 2021 16:59:57 +0000 (UTC)
Received: from st43p00im-ztdg10063201.me.com (st43p00im-ztdg10063201.me.com
	[17.58.63.182]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-161-WEzSfo2fNXaPXhH5-NZpdw-1; Mon, 22 Nov 2021 11:59:55 -0500
X-MC-Unique: WEzSfo2fNXaPXhH5-NZpdw-1
Received: from [192.168.0.39] (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-ztdg10063201.me.com (Postfix) with ESMTPSA id 983D054073C
	for <blinux-list@redhat.com>; Mon, 22 Nov 2021 16:59:54 +0000 (UTC)
Subject: Re: looking for two gui accessible applications
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <2eddfb0e-a139-be53-97a8-2e2468ee9d4a@gmail.com>
Message-ID: <ee33bad3-902b-2d23-0dd4-81feee9b7308@icloud.com>
Date: Mon, 22 Nov 2021 11:59:53 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <2eddfb0e-a139-be53-97a8-2e2468ee9d4a@gmail.com>
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
	=?UTF-8?Q?2903e8d5c8f:6.0.425, 18.0.790,
	17.0.607.475.0000000_definitions?=
	=?UTF-8?Q?=3D2021-11-22=5F07:2021-11-22=5F01, 2021-11-22=5F07,
	2020-04-07?= =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
	phishscore=0
	clxscore=1015 malwarescore=0 spamscore=0 mlxlogscore=878 adultscore=0
	bulkscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.12.0-2009150000 definitions=main-2111220087
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,

I dont know of any gui programs,

but you can try

www.mp3-now.com


Thanks,

Rob


On 11/22/21 10:50 AM, Linux for blind general discussion wrote:
> Hello friends,
>
> I am wondering if there are good applications for downloading from 
> youtube that works well with linux! I am looking for something similar 
> to Ponte's media downloader which works well with windows screen 
> readers. Is there such an app?
>
> The second application I am hoping to find is a good weather app. I 
> tried to the weather on the terminal and did not like it at all. So, I 
> am hoping to find a better alternative that works on the gui.
>
> Cheers,
>
> Ibrahim
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

