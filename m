Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id ECD0E3632CC
	for <lists+blinux-list@lfdr.de>; Sun, 18 Apr 2021 02:16:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618705002;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NP82cmpJOWwvstBmKTAtIJmsGTGCnrM4jni1eUosN5c=;
	b=EjlmzS/q9sJJ+/ps95/v887t9ZtiKLJ+sYhcQ+3VGHWOB0UI0L99YCBsfxOB1DKlo0GEq5
	57NhQ0EuKv2wc7D2JB11sOEgdr1DwjB/6pTWenibvVrbHMz/+V1ZczfNE5Gua82sZeaIf+
	Lsn7/TDf6PSD38WLdakb7w/ZNsg99w8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-40-ftF7xB93Mt-2nuhOLitoCg-1; Sat, 17 Apr 2021 20:16:40 -0400
X-MC-Unique: ftF7xB93Mt-2nuhOLitoCg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BD94510054F6;
	Sun, 18 Apr 2021 00:16:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F81B19C44;
	Sun, 18 Apr 2021 00:16:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B86C51806D15;
	Sun, 18 Apr 2021 00:16:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13I0GRvk002323 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Apr 2021 20:16:27 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8CD73345BA; Sun, 18 Apr 2021 00:16:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 867CC345B7
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 00:16:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 00FBB8001A6
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 00:16:24 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-514-1gHJivgRNZa-Atz7eyry7A-1; Sat, 17 Apr 2021 20:16:21 -0400
X-MC-Unique: 1gHJivgRNZa-Atz7eyry7A-1
Received: by mail-wm1-f42.google.com with SMTP id k128so16216452wmk.4
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 17:16:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=edhQtcWTyhroht1Gc0b6P75s2OBmkTmhQLxQmPvTfQY=;
	b=dZJHdjDsBbb4YSVA6FTGZpYK8zZ1omHbnJ3RdNXaYpz9LDOceC6KWT66JRIa9k16qS
	hHC28cIe2TeeBGaf8RW1yO/6oRVN2But5Pj28Ge58JMCGYNU3D+TPZPK9rtL5k0NC3IX
	vpbuQLois+sJk3FdDAketd/h6HnZGZu4Zq12dVFc9+6j6cBoMuRXuFUHTad+tgpWaVRn
	T0jq7KuKfjd6UOvefuVrJbjGK39sBS/YR8CfliOUvrJfNCGRdkwVv71Ymd0CPrTk0HcP
	UC6Y2v95Bhjzyoqr1diZBop4FGaWezZwIBMPyvkwxT9gG7E0A1g3SdDdZiEOFU3rQF6Y
	7ZpA==
X-Gm-Message-State: AOAM532jYziDFjXk+v+iZ2GL9BCDk4nEmZ/1A0L2Ylv1s+t4CDHya9zU
	2l20DwL4Ep3t7er9fLMFMv9lpra9JPw=
X-Google-Smtp-Source: ABdhPJx8cBA3mpd/Rh+GG1zZiy5I7mcQ/dXlGvK8s7dSU2dDpt+54V1FwCQg/NZvCzDsusr+WREuiw==
X-Received: by 2002:a7b:c401:: with SMTP id k1mr14753020wmi.48.1618704980574; 
	Sat, 17 Apr 2021 17:16:20 -0700 (PDT)
Received: from [192.168.1.130] ([87.74.160.207])
	by smtp.gmail.com with ESMTPSA id
	i12sm15380920wrm.77.2021.04.17.17.16.20 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 17 Apr 2021 17:16:20 -0700 (PDT)
Subject: Re: Voices
To: blinux-list@redhat.com,
	Linux for blind general discussion <blinux-list@redhat.com>
References: <69EB40A9-8E3F-4908-AFFE-92B5E52C7FBA.ref@yahoo.com>
	<69EB40A9-8E3F-4908-AFFE-92B5E52C7FBA@yahoo.com>
	<e7dcbd70-2c5c-be37-b82d-ce5d3a491b4@hubert-humphrey.com>
Message-ID: <15b40d2a-1be0-9607-e0d7-77545a2a3264@gmail.com>
Date: Sun, 18 Apr 2021 01:16:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <e7dcbd70-2c5c-be37-b82d-ce5d3a491b4@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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

So this may be a really silly question....but....was checking SL's mails 
wrt that project,and it got me thinking...

Aside from RHVoice (that I can't get to sound how I like and not sure 
where the config files are), are there any other good voices in Ubuntu's 
default repos?

On 18/04/2021 00:55, Linux for blind general discussion wrote:
> Thats a wonderful question? I wonder also if there are good quality 
> voices only available in ORCA, but not yet for Speakup?? I want 
> something like Semantha, but an Oralux site is still down. Thanks so 
> much in advance.
> Chime
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

