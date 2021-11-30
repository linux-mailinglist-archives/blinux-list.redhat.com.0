Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CE7463CE8
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 18:35:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638293734;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5jaqpkMZrQXIVOgopcUf7Nd9rS1PJK6YAfb2tFgQJ54=;
	b=dZKA4SwjCewpA5n3nGmXTr8wvqpsR+36c3K1/UBTD/kKXyAhy8kkvRtgqjfAmzlofre+wG
	WDZ18f00KmhM9sHcR7K35bpaGCMAVqPtkcyh5jBR/RqFpcCHu+ZHl0Wh0jADeWmqA3DO47
	r7hqMslqPksgVF8XETEqb0aWrj1TlkU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-525-Oz9J5bDYOymJLqDQEgW_Jw-1; Tue, 30 Nov 2021 12:35:30 -0500
X-MC-Unique: Oz9J5bDYOymJLqDQEgW_Jw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 19D6B83DD40;
	Tue, 30 Nov 2021 17:35:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EA3555E26A;
	Tue, 30 Nov 2021 17:35:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 043314CA9B;
	Tue, 30 Nov 2021 17:35:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUHZIj0010731 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 12:35:18 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7664B401E5F; Tue, 30 Nov 2021 17:35:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 726AF401E6F
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:35:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5331E19705A8
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:35:18 +0000 (UTC)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
	[209.85.160.176]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-406-bu5z0EL-OOuXOhm7b7TGOw-1; Tue, 30 Nov 2021 12:35:16 -0500
X-MC-Unique: bu5z0EL-OOuXOhm7b7TGOw-1
Received: by mail-qt1-f176.google.com with SMTP id z9so20973543qtj.9
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 09:35:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=HgeoYm02Z/7wDpF5kcVH5fBsX0MLnQOVNI9/yKvtB5c=;
	b=pqb1JdFCCUyxvTByuflr/G0OG86YciF8XOdmr/nc52sQ+Pcsf68f1P1fXX2ykoQx9p
	z8YVAVpECHnvnpgj0IO3571A4IQAYWeUPLAAWCT4R1haWP6qFwo2aaKHeiVgT1HIDdJv
	OsqJ6JLOtEhCMmT85PJDCpbZMrMSYjze1T7A7l0o9njh9W5Ib8NC+aMUjzqGryb7lBSL
	kiUVBAcDXE57qldZbuwsDebPI5Vu7FWBf4+pPUnNpOXGBK1qaz5waWbASQaFpEQh5u8T
	T+Clb5QGcn1zwvXXvC1Y3c7rhy2mZTVq2pd/g2f8n5LKpt3kk87KfPn5095uRJ0Z8PTK
	0/iA==
X-Gm-Message-State: AOAM532CPl9Kw7Ny9P5TODjUTVQ066h1/Kme8pAVYzOI5D0inplzSJQb
	+V3pCKkOeu7eWRdQzBxaKvDRcWaJQItbuLAO
X-Google-Smtp-Source: ABdhPJwKk7OHZnBJe5kszhDnWm5J1DD9oFx4nf40i+5Ocp6bxo6U6zi3Px/OECu1WuK2FktV/dmzEQ==
X-Received: by 2002:a05:622a:242:: with SMTP id
	c2mr802265qtx.563.1638293715627; 
	Tue, 30 Nov 2021 09:35:15 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330:6a07:15ff:fe1b:961c])
	by smtp.gmail.com with ESMTPSA id
	d9sm10649103qkn.131.2021.11.30.09.35.14 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 30 Nov 2021 09:35:14 -0800 (PST)
Subject: Re: What is the easiest and most accessible editor?
To: blinux-list@redhat.com
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
	<87bl22kqlz.fsf@brainpower.wer>
	<CAO2sX32s07jDN=1KiJCQ-31_gh5RAFFXBibGwKrLd4zuDpESKQ@mail.gmail.com>
	<PH0PR14MB4296B85503BE458036633010C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
Message-ID: <61abb084-c69c-17f5-dc0e-fe6447caf720@gmail.com>
Date: Tue, 30 Nov 2021 12:35:13 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <PH0PR14MB4296B85503BE458036633010C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I agree with you Christopher. Actually I am saving all of the emails of 
this discussion for future benefit. Frankly, at this point I do not 
understand most of the points in the discussion, but that is due to lack 
of knowledge on my part about the working of Linux.

Cheers,

Ibrahim

On 11/30/21 12:04 PM, Linux for blind general discussion wrote:
> I agree, and although I know you're not saying this, I would say that I don't think this discussion has turned into any editor wars. I've found it just a good discussion on the options out there and their relative merits of each.
>
> BTW, I do tend to like applications that let me get started quickly, but in the case of Emacs with Emacspeak, the benefits are so important to me that it was worth the learning curve. It's also a bit of a misnomer to think of Emacs as just a text editor. For example, it can be used as a file manager, a development environment, a personal organizer and more.
>
> --
> Christopher (AKA CJ)
> Chaltain at Outlook
>
> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On Behalf Of Linux for blind general discussion
> Sent: Tuesday, November 30, 2021 8:28 AM
> To: blinux-list@redhat.com
> Subject: Re: What is the easiest and most accessible editor?
>
> I tend to find the editor wars, as well as the browser wars, console wars, various fandom wars, etc. to be rather silly, but I'll say this
> much:
>
> I prefer tools I can jump right into with minimal foreknowledge and be able to do the basics within minutes, learning how to use more advanced features as needed, and if I need to do more than read through the output of -h or --help to get started, I'm most likely going to start searching for an alternative tool for what I'm trying to do.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flistman.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%7C%7Cb58a14268aa848504e8a08d9b40da3a4%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637738792938719255%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=Xb6b8aTf44hj%2FPxtekLNbFaetBcY3bdEQStNrVWqajw%3D&amp;reserved=0
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

