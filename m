Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id CE30F3E0EE6
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 09:08:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628147319;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=SNHT5yoKFKEEa27wwAv9JP2bxptPohXD03rY51Qrdx4=;
	b=A3DviVcp9rvzsX8BbvLD7e9pwbK+LVchTluvZXlIfK/xGDP8xw79H8qEWKKpwx8PEMZfXE
	HAlmWi53tWs++0VgNEOnS/FcZoDdcHkaIrrl679W77UKjvk/6aUWPim7ZR3UHXPVsIThr7
	3BvKhwyB4nDpLITT3bfqIhD8Mv8ChKY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-446-TAn2U7raNbubzMGopQDjxQ-1; Thu, 05 Aug 2021 03:08:38 -0400
X-MC-Unique: TAn2U7raNbubzMGopQDjxQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 160745A07E;
	Thu,  5 Aug 2021 07:08:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 253C21000324;
	Thu,  5 Aug 2021 07:08:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A222018005A2;
	Thu,  5 Aug 2021 07:08:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17578HAQ031292 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Aug 2021 03:08:18 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D010B102F14E; Thu,  5 Aug 2021 07:08:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CC0CB10CD2D2
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 07:08:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 73A1A89B841
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 07:08:14 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-229-4XfoGFsHOXi7OUa8LE0-Gg-1; Thu, 05 Aug 2021 03:08:12 -0400
X-MC-Unique: 4XfoGFsHOXi7OUa8LE0-Gg-1
Received: by mail-wm1-f41.google.com with SMTP id
	l11-20020a7bcf0b0000b0290253545c2997so2942550wmg.4
	for <blinux-list@redhat.com>; Thu, 05 Aug 2021 00:08:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=8VGc4W5lk6zfRaQUD5aNjo+k0qt++C3ljL7Br793vzI=;
	b=OzsDfQjULj1xegRuTQ/YrDuR0LSAYgH0pmxKRIamnu09hq16fcVrhXXdQLk5i79TeS
	ffEL58ltAFt779G5+zWhaWHP+t96LHObNoVPzmo1OFZZntY7Hysz3IWLndIM+9s7S58l
	X2yNTZ9vMmfACcJEMSyy3d90OxapCeAX45sDc8DdTzO4uI4ZFS3PuUuEwx+WmeniRwf5
	jhfVwYbwd5pCZ5ThnYfNDBhWl7+0o7+ZqtM4VHnlah/XxzOuye75f3OBDAru/bs70RUl
	Rhibx5NOaZ5p9ktbehfwdSdyls4uVy3yquvzEIPwV85Xvk3ibQUhJZn/XhaMVqZhG5Q1
	GV8w==
X-Gm-Message-State: AOAM532qcDw95WWIdZk9fZWcd9CMgIhqK69fYQQ+6m6+bONaOQPp7PLK
	TNg0h16DjDuNSe15ZAyiX50NgPd3bFWQxg==
X-Google-Smtp-Source: ABdhPJwLQ5rxL4GA7l6O+hNQdC7/bQgC7qTeDzGoSioscmFVH7AGqTC1HPoxoIoZK4x394k/r82j4w==
X-Received: by 2002:a1c:7d55:: with SMTP id y82mr13415279wmc.102.1628147290959;
	Thu, 05 Aug 2021 00:08:10 -0700 (PDT)
Received: from [192.168.1.130] ([90.254.192.41])
	by smtp.gmail.com with ESMTPSA id
	c16sm5065081wru.82.2021.08.05.00.08.09 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 05 Aug 2021 00:08:10 -0700 (PDT)
Subject: Re: Solus DE observations
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
	<DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
	<57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
	<4020EC8C-BE9D-4ABC-A1B6-EFDCB9F261ED@gmail.com>
	<2a58e6d9-54c9-8d66-7433-aebc6fcf687c@gmail.com>
	<229F2558-87BD-4F2F-907D-218C2D542480@gmail.com>
	<507fd0d3-4aa0-dabf-c080-90bb0775dfa5@gmail.com>
	<dfd09fe5-f568-1553-82a5-650ab234b84d@gmail.com>
	<da3aefc4-efce-2540-9eba-d6ddbd0a6c7e@gmail.com>
	<96BBED50-5B5B-4EED-B882-7CC419DE9B36@gmail.com>
	<224c29c2-1089-4113-ffce-ce3096c1c6c5@gmail.com>
	<EA5E1F3E-DE2D-46DB-B69F-D48C0CE6E337@gmail.com>
	<alpine.NEB.2.23.451.2108042232001.28896@panix1.panix.com>
Message-ID: <7e5f4449-cd33-89d0-7b47-f4b0bfd8305c@gmail.com>
Date: Thu, 5 Aug 2021 08:08:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2108042232001.28896@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Budgie does.

Ctrl+alt+del then tab once and enter to shut down when all windows are 
closed

On 8/5/21 3:32 AM, Linux for blind general discussion wrote:
> You could try poweroff once in the terminal.
>
>
> On Wed, 4 Aug 2021, Linux for blind general discussion wrote:
>
>> I shut down by going in to terminal, and typed
>> reboot
>> and that did it.
>> I am sure budgie has some key shortcut for shutting down.
>>
>>> On Aug 4, 2021, at 7:30 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>>
>>> You could hit the power-off button, and it will ask what you want to do.
>>>
>>>
>>> --  Dave  --
>>>
>>>
>>>
>>> Sent from my Lenovo Thinkpad, running Slint GNU/Linux.  https://slint.fr for info
>>>
>>> On 8/4/21 7:52 PM, Linux for blind general discussion wrote:
>>>> A very basic question, how may I shutdown or restart a budgie system?
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

