Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE0B482851
	for <lists+blinux-list@lfdr.de>; Sat,  1 Jan 2022 20:27:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641065236;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ltM3hXEAIsHthk2gbPa4RnjLuvIvFDP2ngGPAfa3blc=;
	b=JMYaHCmilT0tsNkRtdH6f5qMH3wd6WmSIYSGR8yeqm8VbgTw2vEpD3DZzFZzrTuf3DWI9K
	nfb2N/HJrUYtp/KiZeZSHjcLFQe+8qIE2EVqWJnAjXeapwZgyH5w4zP26BqjTkt79d7Ura
	Cd6VChnI7IhdtU3u6U/Yb5QTQuD1ziI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-44-fUd4MfecNp2Scx_uKix_-A-1; Sat, 01 Jan 2022 14:27:12 -0500
X-MC-Unique: fUd4MfecNp2Scx_uKix_-A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7C1C31006AA5;
	Sat,  1 Jan 2022 19:27:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3885560C17;
	Sat,  1 Jan 2022 19:27:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 13CD11806D03;
	Sat,  1 Jan 2022 19:27:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 201JR6Hm015258 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 1 Jan 2022 14:27:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 67477112131B; Sat,  1 Jan 2022 19:27:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 62E661121319
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:27:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8CD0980A0B8
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:27:03 +0000 (UTC)
Received: from mxd1.seznam.cz (mxd1.seznam.cz [77.75.78.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-278-kW897HFBPk-lazqz89V_zw-1; Sat, 01 Jan 2022 14:27:02 -0500
X-MC-Unique: kW897HFBPk-lazqz89V_zw-1
Received: from email.seznam.cz
	by email-smtpc8b.ko.seznam.cz (email-smtpc8b.ko.seznam.cz
	[10.53.13.225]) id 7c353e7369ad6d297ddfcf6f;
	Sat, 01 Jan 2022 20:27:00 +0100 (CET)
Received: from [192.168.1.142] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay21.ko.seznam.cz (Seznam SMTPD 1.3.134) with ESMTP;
	Sat, 01 Jan 2022 20:26:56 +0100 (CET)
Subject: Re: Recovering shift deleted data
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <7c2c5806-4581-dc53-8e4e-750d9098398b@seznam.cz>
	<963111a5-9514-068d-db29-c0883322600a@gmail.com>
	<27d3f316-bcd0-3ea4-1277-ab5d1318153c@seznam.cz>
Message-ID: <f018d99b-f81d-1602-b4e1-0dbdf65f6b24@seznam.cz>
Date: Sat, 1 Jan 2022 20:26:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <27d3f316-bcd0-3ea4-1277-ab5d1318153c@seznam.cz>
X-szn-frgn: <true>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

sorry for that, I would like to recovery deleted folder with *.mp3 files.

Dne 01. 01. 22 v 20:22 Linux for blind general discussion napsal(a):
> Helo Dave,
> 
> I don't have warnings off, I was so quick on my machine, my fauld.
> 
> Vojta.
> 
> Dne 01. 01. 22 v 20:17 Linux for blind general discussion napsal(a):
>> I think, since you used "shift+delete", they're gone for good. You 
>> must have those warnings turned off?
>>
>>
>> -Dave
>>
>>
>>
>> On 1/1/22 2:07 PM, Linux for blind general discussion wrote:
>>> is some way to recovery shift deleted items?
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
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

