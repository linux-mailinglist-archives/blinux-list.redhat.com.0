Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8134B3EC3
	for <lists+blinux-list@lfdr.de>; Mon, 14 Feb 2022 01:59:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644800371;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2wPfn11TMTnFAog+FTPw3YHD5nBOcZ9iOn+eQQ6x3ps=;
	b=aDVtfVVUa/+0xamSQUArdo1MMBMk1sXwezcGuj8KA24aQkIR3QafDfxvgpfOFUFE/8h0Me
	zFsqS1pWvkiUQd1V2Ug9sTgjTSwYE1QinaElc9Ue/g0AeJdsmarumj8X/54q5cOTpbLnpc
	mQwjU2fmbddUBmNajJKbRsIsrCABcx0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-371-ZY_xZiOdMaSdRNOl43Q01w-1; Sun, 13 Feb 2022 19:59:27 -0500
X-MC-Unique: ZY_xZiOdMaSdRNOl43Q01w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 05FB9801B0C;
	Mon, 14 Feb 2022 00:59:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4165D7A22B;
	Mon, 14 Feb 2022 00:59:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3251C4BB7B;
	Mon, 14 Feb 2022 00:59:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21E0x6NN009355 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 13 Feb 2022 19:59:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 48034141DEC7; Mon, 14 Feb 2022 00:59:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4408A141DEC5
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 00:59:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2B5D4185A7A4
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 00:59:06 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com
	[209.85.216.46]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-1-lAQuJZnBM76-2NQUv-_saQ-1; Sun, 13 Feb 2022 19:59:04 -0500
X-MC-Unique: lAQuJZnBM76-2NQUv-_saQ-1
Received: by mail-pj1-f46.google.com with SMTP id
	v13-20020a17090ac90d00b001b87bc106bdso17311764pjt.4
	for <blinux-list@redhat.com>; Sun, 13 Feb 2022 16:59:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=Fu/4UDYZ5rI11kQ0DsFXdrtaSnvsk+MZPKn7T3L/Ui0=;
	b=Jj2H14HvWsWj1t+cPIw5rEUk+0/CjboKIJfmvC78cfGkBRrqQx7iU2NkDpgDn0MB0c
	jgl1C9TkcXkhwGSocJOnlpABSBmVCPPT6AKcYcTMBiVQO5b0Q7HEv34wwmuwqBwC7Wge
	5kxec9a3ryIa3VWJMdpdmIFKHgxaX6klhhaPUVzrVMoLi4UgWLLuObPUwoNm0RMC4Rsn
	RT9rXKkx0Ss97Be7HsvSlh5yrHi0ddPBRhXR6iUqCUPn7WK/RlgFjMshA2hChnLwzRoh
	PwpYlXelxawqg35ivf/42RHgLWR/yuZy1vPG+VVFNghXd3jsKZg1WoiS1YzmzDUIicNK
	Ac1A==
X-Gm-Message-State: AOAM531zihVdq1JLhHFgGGI3ynnQccmj23odESv6VgbCQS0Hlr5oolu8
	5m5ftcn/wT3VTLoEIbSVctyg2EH+CFiSIg==
X-Google-Smtp-Source: ABdhPJw7w/SOitLE7W/4n8kznkTuyO8LECk88asKfRvof/TLLvumRbYrPp23uFkwu8PhH+fnPK7uFg==
X-Received: by 2002:a17:90a:4e:: with SMTP id 14mr5252248pjb.23.1644800342944; 
	Sun, 13 Feb 2022 16:59:02 -0800 (PST)
Received: from [10.200.1.221] ([103.233.155.116])
	by smtp.gmail.com with ESMTPSA id
	nl8sm2582544pjb.18.2022.02.13.16.59.01 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 13 Feb 2022 16:59:02 -0800 (PST)
Message-ID: <f8278111-3fc6-107d-d5fb-8f85587232c8@gmail.com>
Date: Mon, 14 Feb 2022 07:59:00 +0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: How do you customize the way punctuations are pronounced in Orca?
To: blinux-list@redhat.com
References: <CABKqQvGqKyUTj5KmvkgpOq9H89T9vxxz-LqFZPDZ=WZ5NXOQhQ@mail.gmail.com>
In-Reply-To: <CABKqQvGqKyUTj5KmvkgpOq9H89T9vxxz-LqFZPDZ=WZ5NXOQhQ@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,

Perhaps what you're looking for is Orca preferences > Pronounciation

There you can set pronounciation of character or word.


HtH

On 2/14/22 06:44, Linux for blind general discussion wrote:
> I know you can switch between the usual All, Some, etc, I want to
> control how punctuations are pronounced, e.g. '!' can be spoken as
> "explanation mark," "exclaim," or "bang," When I am writing code, I
> like to hear the punctuation, but shorten it as much as practical.
> This makes code easier to read IMO. Is there a configuration file that
> will allow me to make these changes?
>
> Amanda[0]
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
-- 
Edhoari Setiyoso

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

