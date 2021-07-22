Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id F24913D2D15
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 22:03:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626984192;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mdIspSbuJDj9pUyj7ishM5n0dfpsNG2LB1QpSOMGaBY=;
	b=c7giVo8vBrC8SMmW+QW2mxiCWedERBuHStIPpSQ6RKAbBi9OgiTEfFhM01RfjevxNGOOOp
	4t8ZhfLHMOMW8N02rnnzcJ993Q6c4kHh8BY6HSSyfVYKZqJL3+mCWad1AkfUdASfV2lMJ8
	gjV5Y2UrqUshveo/jPEPspbR+gWKXRU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-471-q0Dn_sk4PDuNB6PJmtDvqg-1; Thu, 22 Jul 2021 16:03:10 -0400
X-MC-Unique: q0Dn_sk4PDuNB6PJmtDvqg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CEECE100F765;
	Thu, 22 Jul 2021 20:03:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ADE9360939;
	Thu, 22 Jul 2021 20:03:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 989DD4BB7C;
	Thu, 22 Jul 2021 20:03:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MK2uEn015169 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 16:02:56 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9B9E21054F8D; Thu, 22 Jul 2021 20:02:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 976771054F8C
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 20:02:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0DFC51064E71
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 19:54:22 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
	[209.85.218.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-551-9J5KlrMVO8SdSSzdQkpSaQ-1; Thu, 22 Jul 2021 15:54:19 -0400
X-MC-Unique: 9J5KlrMVO8SdSSzdQkpSaQ-1
Received: by mail-ej1-f47.google.com with SMTP id hs23so151456ejc.13
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 12:54:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=V7x64dUxsxDmDoCRJzH/HAFuE0zOE6FoxrAfFJ8y6AQ=;
	b=F60CoFNchwkQSWqehkn7tF3cjfvfdgFs0iQjKjaL4VANj66zy2rMlkEl/HIRwEmSda
	8ku1zFyYY0ScfdmmdZIFriwm75TmhD0i7/dYXb0cRt+kXruucZZi4vlL3jPng9gm+LS+
	joIA/z2dAT6Lc86vOUEafbqtX3faTqmvgoIYm00VTxCiL5Bw3jxV2LPb2R0kvtUusmaj
	6QPK9560Ea1cTEAJLnLTAwHagdYSY4HalxETgdRXZTQB0LaFKqL2XH1O3PG78imeqq59
	n6JVF9ySqr7tkFfERkBosGgo3LG3IfIcISEyb71dmQrm2phihvB8jZnf/314ZtDe7HQu
	UpxA==
X-Gm-Message-State: AOAM53169L8dHcTSrqHIeRX2Y+qnxWz3chnh0r1nwqjgiCWIlukH/KAJ
	iH6hhz3irRNzC+427usr+7/wWpv58tM=
X-Google-Smtp-Source: ABdhPJxh2CBkRQuDqK9h6IHZIvEKuufO258/Auw0IvvxOa7ib58UoxQ6aPkdDm3sohXrKoyoS3npwQ==
X-Received: by 2002:a17:907:98d8:: with SMTP id
	kd24mr499452ejc.194.1626983658497; 
	Thu, 22 Jul 2021 12:54:18 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.105.92])
	by smtp.gmail.com with ESMTPSA id
	eg5sm13108932edb.38.2021.07.22.12.54.17 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 22 Jul 2021 12:54:17 -0700 (PDT)
Subject: Re: Adjusting lightdm screenreader volume (How do I...)
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <b03aafa4-daf7-d333-f8dc-80aa029225c9@gmail.com>
	<210fc29d-9144-c009-3557-fd2304aa47cd@gmail.com>
	<6a20948b-bceb-bc96-c787-cf3f2c27c2af@gmail.com>
	<84a2815d-0461-28bc-8f52-6d0f24e34d60@gmail.com>
	<70e8f011-eec9-ba77-f7e4-33bf3d610e33@gmail.com>
	<9BB781F9-3AFD-4475-94BF-CB4DFE7329A6@gmail.com>
	<90a473e9-09f5-9384-3b5a-14f0386030e0@gmail.com>
Message-ID: <429a012f-f319-97ba-ee11-a81121791b78@gmail.com>
Date: Thu, 22 Jul 2021 21:54:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <90a473e9-09f5-9384-3b5a-14f0386030e0@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,


Nope, followed the steps exactly, no luck. Still that very bad US accent.


Warm regards,

Brandt Steenkamp

Sent using Thunderbird from Slint

On 7/22/21 9:43 PM, Linux for blind general discussion wrote:
> First, be sure you have a .local/share folder in lightdm's home folder
>
> sudo mkdir -p /var/lib/lightdm/.local/share
>
> Copy your user's .local/share/orca to your lightdm home
>
> sudo cp -R /home/<username>/.local/share/orca 
> /var/lib/lightdm/.local/share/
>
> and fix the ownership
>
> sudo chown lightdm:lightdm -R /var/lib/lightdm/.local
>
> The next time lightdm starts orca, all your regular user's settings 
> will be used in lightdm. If you change your Orca preferences often, 
> you may want to script this so that all you need to do once you apply 
> your new preferences is to run the script. You could even use 
> xbindkeys if you like, especially if you're using that already, to run 
> the script at the touch of a key combination, although you will need 
> gksudo in order to prompt you for the password outside of a terminal.
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

