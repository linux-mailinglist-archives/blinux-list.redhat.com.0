Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 202473FD04E
	for <lists+blinux-list@lfdr.de>; Wed,  1 Sep 2021 02:31:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630456317;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xl0T5V3DOfqvDjgoJ+6a24u3zjuUtKeAk85LFILZIP0=;
	b=BNH7A1c1I8Kt5ybKJQxb60TbGNo6PEeH6slO0GfhF70FaSGNni3Olt9IC9DlATvgAIyoxd
	LT7dh1SYlla7ukhlG/QxlGoKz5RBGmTUT9yYdyh5dE3wqQ2bVs/gFZgVjVopSbLsqV2aDu
	iKnOaD5q8xUVMhlISH2jfkNA+0JXt9A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-480-2Noqgm2ONa-JJxjEuMoSGg-1; Tue, 31 Aug 2021 20:31:55 -0400
X-MC-Unique: 2Noqgm2ONa-JJxjEuMoSGg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9B7F1801B3D;
	Wed,  1 Sep 2021 00:31:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 27C7060C9F;
	Wed,  1 Sep 2021 00:31:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E02104BB7C;
	Wed,  1 Sep 2021 00:31:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1810VHws003575 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 31 Aug 2021 20:31:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A8B9B2EF9E; Wed,  1 Sep 2021 00:31:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A3090D7DEE
	for <blinux-list@redhat.com>; Wed,  1 Sep 2021 00:31:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AA76C1857F02
	for <blinux-list@redhat.com>; Wed,  1 Sep 2021 00:31:13 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-603-uJZ73NlsMmaWiSMGtbm7XA-1; Tue, 31 Aug 2021 20:31:10 -0400
X-MC-Unique: uJZ73NlsMmaWiSMGtbm7XA-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4GzlNF3yb8z8tQY
	for <blinux-list@redhat.com>; Wed,  1 Sep 2021 00:31:09 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id C_gJSI9kuHuR for <blinux-list@redhat.com>;
	Wed,  1 Sep 2021 00:31:08 +0000 (UTC)
Received: from [192.168.1.100] (208-107-97-40-dynamic.midco.net
	[208.107.97.40])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4GzlND37Q1z8tQW
	for <blinux-list@redhat.com>; Wed,  1 Sep 2021 00:31:08 +0000 (UTC)
Message-ID: <20210901.003115.052.6@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: Re: blind-arch findings
Date: Tue, 31 Aug 2021 19:31:15 -0500
MIME-Version: 1.0
In-Reply-To: <576ba3b4-c113-0c2e-1931-c8e4eabf4204@gmail.com>
References: <alpine.NEB.2.23.451.2108311320240.4235@panix1.panix.com>
	<601917c3-21b1-b0c3-d375-925260efb669@gmail.com>
	<576ba3b4-c113-0c2e-1931-c8e4eabf4204@gmail.com>
User-Agent: POP Peeper Pro (5.1.2.0)
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1810VHws003575
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
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

NVMe will have something like NVM in the /dev tree.=20

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Tue, 31 Aug 2021 20:17:06 -0400
Subject: Re: blind-arch findings

> How can you tell, for a given drive, whether it is sata or nvme? I just=
=20
listened to the youtube walk-through, and may want to try this on bare=20
metal.



Thanks,



Dave=A0 H.




Sent from Slint GNU/Linux.  https://slint.fr/doc/HandBook.html for info

On 8/31/21 5:32 PM, Linux for blind general discussion wrote:
> Hi,
>
> Also, by default it uses the lts kirnel and not the latest kernel.=A0 I=
=20
> don't think there is a way to fix this.=A0 I think there should be a way=
=20
> to chuse which kernel you want, but either way iIt I think it is great=20
> for soomeone whoo is getting started, but you can get around this=20
> drive size problem by manually creatting your partitions if you know=20
> what you are doing, but I think you should bwe able to just use the=20
> remaining space by default.
>
> Matthew
>
>
>
> On Tue, 31 Aug 2021, Linux for blind general discussion wrote:
>
>> It can't do an install for a command line so it is necessary to choose a
>> desktop.
>> Several warnings get thrown by the script but the script continues to
>> work.
>> I think if I do this again and pick a desktop the install will work
>> completely.
>> Partitions are made small sizes and this is on a disk with 240G of=20
>> space.
>> Maybe that could be improved so more of the disk gets used by=20
>> partitions.
>> No option to create and use a swap file rather than a swap partition is
>> available yet.
>> The script could probably install budgie as a desktop choice if worked.
>> When I installed stuff I put xorg on the system along with fonts and=20
>> maybe
>> if I had left desktop and xorg off this might have come up in command=20
>> line
>> mode.=A0 I'll check that out time permitting.
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
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


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

