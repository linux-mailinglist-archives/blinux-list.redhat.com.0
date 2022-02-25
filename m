Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E87264C50BA
	for <lists+blinux-list@lfdr.de>; Fri, 25 Feb 2022 22:30:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645824609;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DbB6Qcm37lCtpu6PyzBHQvqXqANxpAtNV1mcXqJcRjs=;
	b=BB4fELqzecxJEWES7eaKCbkvj2tVfuIaSHmNVP66PNYJwgxEqiB0YcpgDX42SecH5azmId
	FPnrVrhobg7jaGfxcjvC6oR8Gqo67DFbT1yXOnMXI3wXqeBbwVN4dvaYS1VFUumD41d9bG
	2TkMrmXr6Vod6drPDBYKzOUOJ69/cPA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-377-Fhl5NvjRMDyn2vh7BILUSg-1; Fri, 25 Feb 2022 16:30:05 -0500
X-MC-Unique: Fhl5NvjRMDyn2vh7BILUSg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9DF471091DA2;
	Fri, 25 Feb 2022 21:30:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0444F1079750;
	Fri, 25 Feb 2022 21:29:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E8C014BB40;
	Fri, 25 Feb 2022 21:29:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21PLTAu6018119 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 25 Feb 2022 16:29:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D674DC080A9; Fri, 25 Feb 2022 21:29:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D2530C080A6
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 21:29:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B8B88185A7B2
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 21:29:10 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com
	[209.85.218.46]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-648-T1mrKO5HPFi9jSC75fdNMg-1; Fri, 25 Feb 2022 16:29:09 -0500
X-MC-Unique: T1mrKO5HPFi9jSC75fdNMg-1
Received: by mail-ej1-f46.google.com with SMTP id p9so13254225ejd.6
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 13:29:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=JmjYL0hMOwNk7iM7RYXqECRpRq/4b3R/RyOFwG5ZUtU=;
	b=BrzFoEYi6a263itsmiRIw9H/NUxMID4AlrL+AwhSFMmoiiAtaCuYTOHQiJlOENxc81
	xJfzWp4i258wvgQpZAouiUtTKOs3sB3OoF9mB2bpokFSQNvwm0ATJM9OFdun10jNFac5
	TsMbDop7YC5wUfLSoptdvNbWM49hO6LGyg981mUGRA6VBWOXQda/l1zLh6ay51+Ty8Ui
	tun2pLwP3DuExVTEPPk+gq4O0NERsPADWrqyZOZgcdVbj1d1YtYEXaQ/NnaF2tKYZY0j
	x8svJa46denawTeAKu5TiocQXbBLl8yG1r81X1Scs73V72ze9EvZnjKWphnJLvuxcidA
	s5nw==
X-Gm-Message-State: AOAM532SmZSTh7kx+O9AhRCknnNEY3NqhhsI3vLlicoDqIhIpp5/PmNp
	RaMsK2LHam70+h2OR2fkUBonF6Bjj0VU+Q==
X-Google-Smtp-Source: ABdhPJwDXdK7whFR5FGiKjiucCcc6HRcoLOi/dkxrGl4EFHRRU8LOhHBm9MZuGEma878t/ia50Er+w==
X-Received: by 2002:a17:906:8557:b0:6cf:2730:b5cf with SMTP id
	h23-20020a170906855700b006cf2730b5cfmr7501541ejy.368.1645824547313;
	Fri, 25 Feb 2022 13:29:07 -0800 (PST)
Received: from [192.168.8.130] ([197.184.177.193])
	by smtp.gmail.com with ESMTPSA id
	u19-20020a170906125300b006ceb043c8e1sm1456437eja.91.2022.02.25.13.29.05
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 25 Feb 2022 13:29:06 -0800 (PST)
Message-ID: <e995e809-c3fc-20f7-a633-82e9fd1e4e87@gmail.com>
Date: Fri, 25 Feb 2022 23:29:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.6.1
Subject: Re: Voice assistant on Linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <37760ebe-f519-16b6-2f46-691c0708aedf@gmail.com>
	<5a55ff72-4742-1540-5859-c169a1ab81f8@free2.ml>
	<1f5fe928-53cd-2c91-4ff6-f14339f36d19@gmail.com>
	<753fd4ae-d611-e942-7270-a777b53858cf@free2.ml>
In-Reply-To: <753fd4ae-d611-e942-7270-a777b53858cf@free2.ml>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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

Unfortunately my system (Slint) cannot run snapd, no Systemd.


I tested Almond, but no use, you have to type queries and in that time I 
could've asked an Echo.


Warm regards,

Brandt Steenkamp

Sent using Thunderbird from the Slint machine

On 2022/02/25 21:30, Linux for blind general discussion wrote:
> I thought I remembered someone telling me that you could install Alexa 
> using Snap, but I also remember it being somewhat experimental or 
> something.
>
>
> Yes, I also have a couple of Alexa devices, I just keep them out of 
> bedrooms and bathrooms, what I consider to be the most private parts 
> of the house. They stay in the livingroom and kitchen, where they are 
> most useful at any rate.
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

