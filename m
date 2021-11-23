Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E437145AEE0
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 23:08:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637705304;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=10y3nWHIJF3ZnFoCAtEJgg0HFcKFGxgYMI6utR0gIPs=;
	b=iB8rdzk438zGMVsp1ZfA2iofAiySblhhq4TEF7KEbVBzfxedITJWi4rPCTlE326+ha0Q+B
	/RiR/1pihsI6LdlSNiaxkFODSQd32nc8Gcm7gSUtsHROSR56021v6gD/AhV+8VVYnvBXkG
	a6v8wyYr/6ewDRLEVPM+4kvM03CHG1Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-337-Tlz71N1PPOmZlrufxcULBQ-1; Tue, 23 Nov 2021 17:08:19 -0500
X-MC-Unique: Tlz71N1PPOmZlrufxcULBQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E86A7875047;
	Tue, 23 Nov 2021 22:08:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D18A0100164C;
	Tue, 23 Nov 2021 22:08:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A02161832E80;
	Tue, 23 Nov 2021 22:08:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANM8CjQ021832 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 17:08:12 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3BB2A4010FE4; Tue, 23 Nov 2021 22:08:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3684540149A9
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 22:08:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1C7818007B1
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 22:08:12 +0000 (UTC)
Received: from st43p00im-ztbu10063601.me.com (st43p00im-ztbu10063601.me.com
	[17.58.63.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-381-bW5VdyZNO6GS5i4wK1bq9g-1; Tue, 23 Nov 2021 17:08:10 -0500
X-MC-Unique: bW5VdyZNO6GS5i4wK1bq9g-1
Received: from [192.168.0.39] (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-ztbu10063601.me.com (Postfix) with ESMTPSA id 87ED3700745
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 22:08:09 +0000 (UTC)
Subject: Re: Can I upgrade Coconut to Mint?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <993f996a-d2ca-1ed0-e23c-3357d5a2f146@icloud.com>
	<5ca73560-e7d4-56f7-c875-8677d4ea9d65@gmail.com>
Message-ID: <d93cf58b-8952-e111-3973-cbd73f142174@icloud.com>
Date: Tue, 23 Nov 2021 17:08:08 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <5ca73560-e7d4-56f7-c875-8677d4ea9d65@gmail.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425, 18.0.790
	definitions=2021-11-23_08:2021-11-23,
	2021-11-23 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
	malwarescore=0
	phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
	mlxlogscore=879 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-2009150000 definitions=main-2111230107
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

My reason was that I thought Mint was getting updated more than Coconut, 
But I cant really find a lot of info on Coconut.

I will just stick with Coconut for now.

And if I move to Mint, I'll do a clean install.

Thanks,

Rob


On 11/23/21 1:57 PM, Linux for blind general discussion wrote:
> Hi,
>
>
> Coconut is an Ubuntu spin built on Ubuntu LTS. Mint is also an Ubuntu 
> spin. Thus the question should be, what does mint do that my current 
> install doesn't?
>
>
> Once you answered that question, you should ask, what will do what I 
> need?
>
>
> Then you run $sudo apt-get install
>
>
> with the list of packages you needed.
>
>
> If a package is not in the repos, you hope there's a .deb compile out 
> there. If not, you build it from source code, not my thing, I'll 
> freely admit.
>
>
> Warm regards,
>
>
> Brandt Steenkamp
>
>
> On 2021/11/23 20:50, Linux for blind general discussion wrote:
>> Hi,
>>
>> Is there a way to upgrade coconut to mint without loosing my 
>> installed programs?
>>
>> I dont want to have to install them again, if possible.
>>
>>
>>
>> Thanks,
>>
>> Rob
>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

