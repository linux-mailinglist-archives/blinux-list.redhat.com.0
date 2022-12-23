Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BAE655495
	for <lists+blinux-list@lfdr.de>; Fri, 23 Dec 2022 21:50:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1671828602;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QV1lRKMXCvq8tVCxg1Xl3Z+/XY2rtvcjpFm52li4PY8=;
	b=Xq0o95AB+fkh9vx1BWa+1M1l/xvb93x0QNpuYcuefVrnvsvf5IT7RF5HRiECeaOLcmUVmr
	eM8DMNrGsAdMAEqJiCIKmBlF3rTSuMj/8UaF81hvPFHGsohOf+RRhZgzsmDkPG7SCvCyUW
	+RSbVRCM6Qj0rRzAsxHz3Iw6iv7yO44=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-673-3hLCpbAIPk673lhTzHJayw-1; Fri, 23 Dec 2022 15:49:58 -0500
X-MC-Unique: 3hLCpbAIPk673lhTzHJayw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 059C938041DA;
	Fri, 23 Dec 2022 20:49:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 90CB840C1073;
	Fri, 23 Dec 2022 20:49:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 137FA19465BA;
	Fri, 23 Dec 2022 20:49:55 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 23 Dec 2022 15:49:51 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: anyone use dreamhost?
In-Reply-To: <mailman.1058.1671828059.2515676.blinux-list@redhat.com>
References: <mailman.1023.1671771575.2515665.blinux-list@redhat.com>
 <mailman.1058.1671828059.2515676.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1117.1671828594.2515662.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Joel,
At least I know it is not just me, so thanks for that.
my last exchange with dreamhost about the subject leading to my asking 
here, was that no accessible alternatives are provided at all.
Its frustrating for me personally, the  organization for whom I work have 
a nonprofit  gifted account, meaning dreamhost takes a tax deduction for 
those in the sector using their services.
However little things like the control  panel, needful to manage services 
are, it seems, a closed door.
That the GUI  door is also challenging is quite concerning.
Joyous holidays to you as Well,
Karen



On Fri, 23 Dec 2022, Linux for blind general discussion wrote:

> Hi Karen,
>
> I use dreamhost. The GUI panel currently requires several
> CAPTCHA photo challenges before you can log in.
>
> I suggest you contact support@dreamhost.com and ask
> what accessible alternatives they have to the GUI panel.
>
> Good luck and happy holidays
>
> Joel
>
>
> On Thu, Dec 22, 2022 at 11:53:06PM -0500, Linux for blind general discussion wrote:
>> Hi folks,
>> If so, how are you logging into your control panel in command Line Linux?
>> Even elinks fails now.
>> Worse yet, their shell provides links the chain, and it does not work their
>> either.
>> Thanks,
>> Karen
>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>
> -- 
> Joel Roth
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

