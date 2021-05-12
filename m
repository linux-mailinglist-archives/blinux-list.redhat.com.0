Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 67FDB37BD9D
	for <lists+blinux-list@lfdr.de>; Wed, 12 May 2021 15:02:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620824573;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=r2mD7qIEh5rbgyA0IBseUzbHhsw31EzvARwvz8C3qqc=;
	b=QsW2MERyWnNhR0jbENC4OJh8ph5ti5VjFfGrDMdEBYE8BIfgPPZ0MFcuR2u43IU2kb3kZS
	aL3NfNfUDe/rHJvyJ8h1i64CYvHAHgilbXURs3+kKPxTbg15BnhB8jtYZql32nok84OUXs
	TeMMh48RVtF/sDNwYgIZ4AMhO84a0Go=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-333-xz58-y93N_6kwXz4WadWhQ-1; Wed, 12 May 2021 09:02:51 -0400
X-MC-Unique: xz58-y93N_6kwXz4WadWhQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 56126192298D;
	Wed, 12 May 2021 13:02:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8C64C19D7C;
	Wed, 12 May 2021 13:02:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 97DA855341;
	Wed, 12 May 2021 13:02:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14CD2cVI028847 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 12 May 2021 09:02:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1BEA81054E4C; Wed, 12 May 2021 13:02:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 17B021054E62
	for <blinux-list@redhat.com>; Wed, 12 May 2021 13:02:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9AC1C8015B9
	for <blinux-list@redhat.com>; Wed, 12 May 2021 13:02:35 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-128-MGZX4LPGMBK6YmiSQMe6aw-1; Wed, 12 May 2021 09:02:33 -0400
X-MC-Unique: MGZX4LPGMBK6YmiSQMe6aw-1
Received: by mail-wm1-f44.google.com with SMTP id u133so1475188wmg.1
	for <blinux-list@redhat.com>; Wed, 12 May 2021 06:02:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=hGPmBhE/8yO+pGYoOgLIYARIEU6nQ7sHQjNCZFZ6MNw=;
	b=GDIU7DuEjHrfg0v3Cx/DWiJ88Oii4AoQGyV3akmWnEOnZGkzMzSO0wqzHM93Kf2TiF
	HrLbB9SFhfADH8rl4NfHTEE0VGQAcsp3CPypx6FSw7IZyLCzCJf+WkCixGrikDLr2m09
	gpe9zlEhbPg4wBL8KKAaWDNx5jLNy5Nq+UePF0UhzNLNS4Ru1OJVtfGOq3moB/Eu8scz
	Rl4BGCoUjbwtMbc4fpu8DhYS8IwaYCLXhXWIL6sS5S2oKEep4p8Z2H0WLlE0Y0zCf1BG
	4QZW9TbDG1rq9yqe5x4sKmrKrW6pijzDzB2RuUT5huhgnqfSA50vyEpPMaIWFTqQkuEH
	ZGSg==
X-Gm-Message-State: AOAM531JPw8+X8FIBSdznPQJu9yyJOepvTuHx5kNUmAFI+kZRxOac7VD
	yj0Gj+sDqHCIiA3M39XTyg4ZupBdY9BSXObl
X-Google-Smtp-Source: ABdhPJzvdbWZV+5UITonrLCL4Xl4APGlOZeEAMFyKEiqHVlyZ7HBbkrcj+iVKqP4Kt0/7CR78Kk9tA==
X-Received: by 2002:a7b:cb45:: with SMTP id v5mr39843324wmj.48.1620824552239; 
	Wed, 12 May 2021 06:02:32 -0700 (PDT)
Received: from [192.168.1.130] ([87.74.160.207])
	by smtp.gmail.com with ESMTPSA id b15sm769075wru.64.2021.05.12.06.02.31
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 12 May 2021 06:02:31 -0700 (PDT)
Subject: Re: Batch convert ebooks qustion
To: blinux-list@redhat.com,
	Linux for blind general discussion <blinux-list@redhat.com>
References: <3f911846-3ba1-131e-14fe-c41694c55c9a@gmail.com>
	<alpine.DEB.2.21.1.2105121430470.29828@willempc.meraka.csir.co.za>
Message-ID: <96c3f714-71a9-9a05-44e6-77fc30c942c5@gmail.com>
Date: Wed, 12 May 2021 14:02:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1.2105121430470.29828@willempc.meraka.csir.co.za>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

That's exactly what I was looking for, thankk!

On 12/05/2021 13:39, Linux for blind general discussion wrote:
> Hi,
> First put all the epubs in a directory.
> Then cd into that directory.
> Then run detox. This is to remove spaces and other nasties from the 
> filenames.
> Install the detox package if required, then do
> detox *
> in the epub directory.
> then do:
> for i in $(ls *epub);do
> textname=`basename $i .epub`
> ebook-convert $i "$textname".txt
> done
> HTH, Willem
>
> On Wed, 12 May 2021, Linux for blind general discussion wrote:
>
>> So, I've a fun question. I bought a box set of ebooks that got 
>> delivered in .epub format. I'd like to convert them to .txt, the 
>> ebooks are DRM free, but I don't want to go through one at a time. So...
>>
>> Can I use ebook-convert, I can't do ebook-convert *.epub *.txt
>>
>>
>> So how can I tell ebook-convert to take all the files of a certain 
>> type and convert to my desired output type?
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

