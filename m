Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 501874AE5C6
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 01:11:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644365488;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wvs57NaTHgCCnxvdAZcZ/9d/FBIcNqqujX87btth0H8=;
	b=OUVpjWe8jsUJLmoXpe7lgJ9oEhe+6Iklx4aq8guyYyjzXzNBaOs9bg+exHuqRdk4FUvtcn
	kJqO3pdlH46ojs4sAPPxx3cCuB/bdYE7jNPHLgytav9PM15irwF/O6z77PiItahB/tkLSF
	NOnN2ioU36g/X55+XeCOylYZqExnPo4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-186-dOvqhsHdNCOuqOTqQRKwZw-1; Tue, 08 Feb 2022 19:11:24 -0500
X-MC-Unique: dOvqhsHdNCOuqOTqQRKwZw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9E5832F26;
	Wed,  9 Feb 2022 00:11:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8E49A108CC;
	Wed,  9 Feb 2022 00:11:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6B10E4BB7B;
	Wed,  9 Feb 2022 00:11:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 2190B6nd006460 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 8 Feb 2022 19:11:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 00C7B2026D13; Wed,  9 Feb 2022 00:11:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EAD352026D11
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 00:11:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7D4612B699E1
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 00:11:02 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-582-pETG95SnO8ikmvBsu_F1KA-1; Tue, 08 Feb 2022 19:11:00 -0500
X-MC-Unique: pETG95SnO8ikmvBsu_F1KA-1
Received: by mail-wr1-f46.google.com with SMTP id s10so1149874wra.5
	for <blinux-list@redhat.com>; Tue, 08 Feb 2022 16:11:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=CoH8EYZm/e5c+LHBF2QcTmqOcm7CdVOvPrJOO6Y4EMY=;
	b=Rf9IS7AuaSvPozkVusGD77weWn2eyWRjXRE9WasUJs8KMsQSEDvkaNXIfPlwipYOyA
	sJGxVqzROMFjeSMFytUQxkdT1c2FELI2sAGQ5X2h4vC/W+yeCpEc5I8uOzpJo3TDmW0B
	S5ZOeLyfWCm2gtUVM6cgpVbjorI8URh3VhpnVSiaZPOgrDouaYDG/OlvLPciwIDhHjG6
	TNFsAzqoAIDeKILGsNkDX3j3Fa9zKR5JSLLnBDqs9t087Ndw01bSXYSSxitA0pn+rbbV
	APbTRX+HnqB44+fjGRFxOVWIxCosoI/rk2FORT7TLolgCXjWQdnFMiOeOn0eTp4ZFGTI
	E4Pw==
X-Gm-Message-State: AOAM530E/xgAc37L2hHR/M0Fx5mgXnMRxBYQHFM8MDjCC5SGM+Y+Cgqy
	vvifWuIrdk63uBD3SkrutZzAWVfnU8Mzuw==
X-Google-Smtp-Source: ABdhPJzPu7TtXAI2YjQS9MglgTe1hRymqpyc+k/Q1L3Ufxjlt4LS9CFx8ShcsAhGSoi0nNln8dRHsg==
X-Received: by 2002:a5d:4082:: with SMTP id o2mr5093159wrp.691.1644365459040; 
	Tue, 08 Feb 2022 16:10:59 -0800 (PST)
Received: from [192.168.1.130] ([87.74.163.68])
	by smtp.gmail.com with ESMTPSA id e3sm8158138wrr.94.2022.02.08.16.10.58
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 08 Feb 2022 16:10:58 -0800 (PST)
Subject: Re: Has anyone gotten i3 accessible yet? or is there a better option
	besides ratpoison, which is great, btw
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <291bcc92-8153-06b1-5831-937bb8d7f289@gmail.com>
Message-ID: <10ddd15f-34b1-4137-b114-e5d44c31b12b@gmail.com>
Date: Wed, 9 Feb 2022 00:11:14 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Firefox/68.0 SeaMonkey/2.53.10.2
MIME-Version: 1.0
In-Reply-To: <291bcc92-8153-06b1-5831-937bb8d7f289@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Not really a WM...

But I've adapted Strychnine to work with LXDE/LXQT. I couldn't get i3 to 
work and I'm not touching xmonad at all. I'm not sure about Stumpwm 
however....but I've yet to find anything as intuitive as Ratpoison 
personally. If i3 can be made accessible, I'd like that but I'm not 
sure. Wasn't there a github/gitlab bounty for it a while ago?

Linux for blind general discussion wrote:
> Hi all,
>
>
> The subject encompassed basically all I wanted to know.
>
>
> I remember a while ago someone built a talking arch installer using 
> the ezarch scripts. On their page they listed i3 as an accessible 
> option, but I could never get the thing to install on a VM, and at the 
> time I wasn't going to break my Windows install to test it. Now, 
> maybe, but I cannot for the life of me remember what that project was 
> called.
>
>
> If anyone got any tiling WM setups, besides ratpoison to work as they 
> should, please let me know.
>
>
> I really love the way ratpoison doesn't slow this machine down at all.
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

