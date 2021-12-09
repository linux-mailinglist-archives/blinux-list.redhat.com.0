Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4262546ED7C
	for <lists+blinux-list@lfdr.de>; Thu,  9 Dec 2021 17:49:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639068566;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=SCjqQ8GuBh7/Y5xsMa6CHH4Lm7mlEJc3ACA/Oe6PCbo=;
	b=AMotHrXZ3ZvQbK0m0mKSaITVXSL2pHgvKfTHyY0RqN1phCX0x58J+haa5K3fKh1bu3/Od1
	AfCSojItLof92EQMFERIWWmgby9UanlaGD/bE/a7eR3TVLvYiZiNKoSPmevqSHpt8BrNFu
	B2NlCqFB4lZqUugwZ16b/Y7hh4vxPe0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-556-LABM5hcxPjGFNBIO-8zDjQ-1; Thu, 09 Dec 2021 11:49:22 -0500
X-MC-Unique: LABM5hcxPjGFNBIO-8zDjQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7DB11835E2F;
	Thu,  9 Dec 2021 16:49:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C65925C23A;
	Thu,  9 Dec 2021 16:49:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3ECAB4BB7C;
	Thu,  9 Dec 2021 16:49:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B9GmWhh017991 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 9 Dec 2021 11:48:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 556A02166B26; Thu,  9 Dec 2021 16:48:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 504FD2166B25
	for <blinux-list@redhat.com>; Thu,  9 Dec 2021 16:48:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A47A7811E7F
	for <blinux-list@redhat.com>; Thu,  9 Dec 2021 16:48:26 +0000 (UTC)
Received: from st43p00im-zteg10063501.me.com (st43p00im-zteg10063501.me.com
	[17.58.63.176]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-594-8PKtZIXNP4W9B0kQTC5Kxg-1; Thu, 09 Dec 2021 11:48:25 -0500
X-MC-Unique: 8PKtZIXNP4W9B0kQTC5Kxg-1
Received: from [192.168.27.128] (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-zteg10063501.me.com (Postfix) with ESMTPSA id 9068DC8071D
	for <blinux-list@redhat.com>; Thu,  9 Dec 2021 16:48:21 +0000 (UTC)
Subject: Re: .sh files not opening in terminal
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <f342b0c4-5ca4-0f8d-3e04-60c3631c8976@icloud.com>
	<69e47126-3266-1a09-b033-16bb161fb1c8@gmail.com>
Message-ID: <5a17a99f-cbea-01d7-c6c4-c5601fa41d7a@icloud.com>
Date: Thu, 9 Dec 2021 11:48:13 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <69e47126-3266-1a09-b033-16bb161fb1c8@gmail.com>
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
	=?UTF-8?Q?2903e8d5c8f:6.0.425, 18.0.790,
	17.0.607.475.0000000_definitions?=
	=?UTF-8?Q?=3D2021-12-09=5F07:2021-12-06=5F02, 2021-12-09=5F07,
	2020-04-07?= =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
	phishscore=0 spamscore=0
	clxscore=1015 mlxlogscore=981 bulkscore=0 malwarescore=0 suspectscore=0
	adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.12.0-2009150000 definitions=main-2112090089
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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

Thanks to all who helped with this issue.

On 12/9/21 11:08 AM, Linux for blind general discussion wrote:
> Are you trying to run them from a file manager or from a run window? 
> On the MATE desktop, the alt+f2 run window has a checkbox that says 
> "run in terminal." Caja asks me about an executable shell script, 
> whether I want to display it, which would open it in Pluma, or run it, 
> which opens a terminal and runs the script. Hope this helps.
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

