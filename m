Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F10B4C4E4D
	for <lists+blinux-list@lfdr.de>; Fri, 25 Feb 2022 20:08:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645816095;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=x0N4WMrjc9XDcTdWRjdEc8V0iAhX8+IPNH62OUXSL2M=;
	b=XUuTDf2ncvhiBeXT9/CphZmz1ytaws4+I8H11aRY9WVBeEuE5va7W6ASbuJ3tS+vySL6Ns
	AVs2K1IJ+kDWbLE5VV6K1gIjjp4k/YgHDn3R7VxvTOB/hUIRadiomAbu6V3XzSWouMCZqU
	lMcx9E9oGk95d9foYMd4QXNhHvJU41g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-168-w4z4zBaZPDy3XS5YhQcJcg-1; Fri, 25 Feb 2022 14:08:13 -0500
X-MC-Unique: w4z4zBaZPDy3XS5YhQcJcg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 215E91006AA7;
	Fri, 25 Feb 2022 19:08:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8BE515D99B;
	Fri, 25 Feb 2022 19:08:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0CD0D4A701;
	Fri, 25 Feb 2022 19:08:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21PJ80V0008476 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 25 Feb 2022 14:08:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A696D2166B17; Fri, 25 Feb 2022 19:08:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A24322166B13
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 19:07:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6E06D185A7B2
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 19:07:57 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com
	[209.85.218.52]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-45-RmQfreGAO6-03_2G0GZMWg-1; Fri, 25 Feb 2022 14:07:55 -0500
X-MC-Unique: RmQfreGAO6-03_2G0GZMWg-1
Received: by mail-ej1-f52.google.com with SMTP id vz16so12773404ejb.0
	for <Blinux-list@redhat.com>; Fri, 25 Feb 2022 11:07:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:to
	:content-language:from:subject:content-transfer-encoding;
	bh=63iuWXc91knej56bzzfmWs5Mj8usTHe6Z/wXNe84r/M=;
	b=rHsMr4dg5urYV3a/wKmjKq6TJIRkXAeHGSREPRCF6QM2szB2Ab1YfpC2JQ5t/Dd+Sa
	FVBiSaKYV/0JNAd3NKB5NSkX7uliC8jVcV3pd53PDSnLVCsp71ub7nVeWhgvB6Y+Ff/9
	DTG5ByGCHyjnAB4mVM1YV6VmPCXaUM1/u42V7chU4j1syjjsvFafzVI89JrepU1H3hOs
	OFYvSeMGStBwqLewzIdGqotKXZFZ1zURn8BJD8s2yDogAI8bzlKLLzBURCrBDTHsHJmi
	4aSQ5imU8VFsTfVx2ma7WztTTyK0jHUyKfx6d54xJ4A4OUAEbD89/f05cfxww12pEbvj
	eylw==
X-Gm-Message-State: AOAM533IAXWPAJ938wNBqdRhkadX/ujdABIHiT5V97a53BK0Kr5zk5tS
	G1dmzSAjoGWmrb565In2QtdJth6UEpe4Gg==
X-Google-Smtp-Source: ABdhPJwDNBw+9gEAxRNZqksE4d43mPxXcv9qGncHKnaXJVqhkBUPUNAx/ChwJ4ihNPYdISfwhs26iA==
X-Received: by 2002:a17:907:20d2:b0:6b5:1bad:89f2 with SMTP id
	qq18-20020a17090720d200b006b51bad89f2mr7087764ejb.331.1645816073846;
	Fri, 25 Feb 2022 11:07:53 -0800 (PST)
Received: from [192.168.8.130] ([197.184.177.193])
	by smtp.gmail.com with ESMTPSA id
	ee21-20020a056402291500b00410d4261313sm1681111edb.24.2022.02.25.11.07.52
	for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 25 Feb 2022 11:07:53 -0800 (PST)
Message-ID: <37760ebe-f519-16b6-2f46-691c0708aedf@gmail.com>
Date: Fri, 25 Feb 2022 21:07:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.6.1
To: Blinux-list@redhat.com
Subject: Voice assistant on Linux?
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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

Hi all,


I was just curious, on the Mac we have Siri, in Winbloat they have 
Cortana and on the ChromeBook they have Google's voice assistant.


Do we have anything reasonably good?


I have heard Youtube videos where people built Voice assistants using 
their Linux machines, is any of this available for install and use?

Warm regards,

Brandt Steenkamp

Sent using Thunderbird from the Slint machine

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

