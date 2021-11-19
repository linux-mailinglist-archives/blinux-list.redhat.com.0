Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBA44579A7
	for <lists+blinux-list@lfdr.de>; Sat, 20 Nov 2021 00:39:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637365178;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GwNoSyjHZH0wgvydQ+zlnmL3CSnBZYTb+qJggJfCaBQ=;
	b=ahCExTwmb6pgH8xHGaInL74QveHwPhT21gLXfvptZA+gYJWWbD9tq70ZFw2Sfd7okVB18Y
	M1ZPMK9hHi2nRrmkWvo5r/n4B+wyNZFaYboZCt1+8qqcPwHtgDmMd6wG55yS/zVmYc5hIA
	rKsmjyALdDqOcXwdGNJqK0Hq08XJ3IM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-59-urccLZN1MYy6PyVQCme10g-1; Fri, 19 Nov 2021 18:39:34 -0500
X-MC-Unique: urccLZN1MYy6PyVQCme10g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EE8171023F4D;
	Fri, 19 Nov 2021 23:39:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 82B3519811;
	Fri, 19 Nov 2021 23:39:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 77B564A703;
	Fri, 19 Nov 2021 23:39:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJNZ1RY028230 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 19 Nov 2021 18:35:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3E3FC1121318; Fri, 19 Nov 2021 23:35:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 384CD1121315
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 23:34:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5F8BE80B70B
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 23:34:58 +0000 (UTC)
Received: from st43p00im-ztdg10073201.me.com (st43p00im-ztdg10073201.me.com
	[17.58.63.177]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-201-rclkjhtON568LfoOMqtzQg-1; Fri, 19 Nov 2021 18:34:56 -0500
X-MC-Unique: rclkjhtON568LfoOMqtzQg-1
Received: from [192.168.184.133] (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-ztdg10073201.me.com (Postfix) with ESMTPSA id 9382D222002
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 23:34:54 +0000 (UTC)
Subject: Re: Mint Mate folder options?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <0B4FABFE-C65D-4207-B145-A053DB7D16AB@icloud.com>
	<e96bb0e4-fac5-9a01-e6a7-2107feb49bb3@gmail.com>
Message-ID: <ae60eca3-2e49-4efd-8a75-1fd5e113b6d7@icloud.com>
Date: Fri, 19 Nov 2021 18:34:53 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <e96bb0e4-fac5-9a01-e6a7-2107feb49bb3@gmail.com>
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
	=?UTF-8?Q?2903e8d5c8f:6.0.425, 18.0.790,
	17.0.607.475.0000000_definitions?=
	=?UTF-8?Q?=3D2021-11-19=5F14:2021-11-17=5F01, 2021-11-19=5F14,
	2020-04-07?= =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
	adultscore=0 spamscore=0
	suspectscore=0 mlxlogscore=999 bulkscore=0 phishscore=0 mlxscore=0
	malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.12.0-2009150000 definitions=main-2111190124
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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

Thank you,

I never thought to look on the edit menu for preferences.

Rob

===

Hi,

To set your folder options:

1. Open a folder, such as your Home folder.
2. Press Alt+e to open the edit menu.
3. Arrow down to preferences and press Enter.
4. This screen has a number of tabs including: Views, Behavior, Display, 
List.
5. You can tab through the various options on each tab page. You may 
have to use the Orca line up/down commands to learn about folder option 
controls that do not speak. Using this method, you can set all of the 
folder options.

Also, look for a program called MintTweak. I installed it using apt-get. 
It give you control over various system options, including which system 
icons to display on the desktop.

HTH,
John


On 11/19/2021 5:00 PM, Linux for blind general discussion wrote:
> Dear List,
> I have searched the control center, but cant find out how to change 
> the default folder views, or how to get a are you sure dialog when 
> deleting files.
> I had a hard time selecting the icons to show on the desktop. I had to 
> use flat review to select my options.
> But as I said, I cant find anything about folder options.
>
> Thanks,
> Rob
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

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

