Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 666123FAB1E
	for <lists+blinux-list@lfdr.de>; Sun, 29 Aug 2021 13:37:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630237031;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yGPGgKA2b5mCO4HNOeNNDhFSyrjfCOio8152gW7jO24=;
	b=EU7EH5DVIWRwieZwJ9PzjSt5yzBSo/a3CY/AnpaHmJqW4wMP63vU1PIAyY07++8SHZXq94
	+sx4hj5C6pyg23sa0NY+wA67+g+DMvHJG+D/SCgGIeVoh5zfgSWFinVIkb4vonfSW5qY8m
	NNXeqFioqKYMIzXcRfdx4LrhcaAzeyY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-261-nonyNekfOgSfKJa1znmZDw-1; Sun, 29 Aug 2021 07:37:09 -0400
X-MC-Unique: nonyNekfOgSfKJa1znmZDw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 524B0871807;
	Sun, 29 Aug 2021 11:37:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1AE475D740;
	Sun, 29 Aug 2021 11:37:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2071A4BB7B;
	Sun, 29 Aug 2021 11:36:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17TBaera002647 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 29 Aug 2021 07:36:40 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 60BD11004D9F; Sun, 29 Aug 2021 11:36:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5C5AF1111432
	for <blinux-list@redhat.com>; Sun, 29 Aug 2021 11:36:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F28A28001EA
	for <blinux-list@redhat.com>; Sun, 29 Aug 2021 11:36:36 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-444-Vo7ksiAjM1O2vyc6jcsY2A-1; Sun, 29 Aug 2021 07:36:34 -0400
X-MC-Unique: Vo7ksiAjM1O2vyc6jcsY2A-1
Received: by mail-wm1-f50.google.com with SMTP id
	j17-20020a05600c1c1100b002e754875260so7449955wms.4
	for <blinux-list@redhat.com>; Sun, 29 Aug 2021 04:36:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=5QUW0Nnjir74qEDm3Gtyp3F8Tf4SlNDTKU6yzwgA7Jg=;
	b=VFrsxg+dvJs2dhSSBPL6jpF7zmc63X7A5CpL0x95VSfQGTaCcIDViEQ4jotLbxtZEV
	v75dWAp5PG9f9nNcRWc5e9eQakjwd9YmrkT6jWflDHd87z+VXco1UTqs3d8QjKoQO/ca
	Ya+TfhjCvawR7gQs+fterZleornjcs3GVF09sV0WKEZuhOs/YdXnd2OUY7rn5dvAR3aq
	4YHlzyHyFughnKMYximAQ4gQFDVGW8q3dLlEuVaHbpGV/wB/mvHDl6xXe9AWn36snDNU
	PwCv6Wkgwdc83We+Y8yVlYCNpz2Eg+lLBJsDwcJLnovQJxA4DVWNXrQ57oC6grpAW6Gp
	nV6Q==
X-Gm-Message-State: AOAM530JhuxoxhYrF9jMHVdeyqjjfBDPTwpLa6eHWbCbOAVQ2L/el2GM
	aCfI8E/9a/41pXBTxet0DkyMJw0E8C5e7g==
X-Google-Smtp-Source: ABdhPJwM818ULXeLqN0KWvdXQjXlJO9o0wIS0XUadbTe+R9dTkq/GNlf4wpslgJYWNoDNTQd2nC/qQ==
X-Received: by 2002:a1c:25c7:: with SMTP id
	l190mr14080770wml.118.1630236993216; 
	Sun, 29 Aug 2021 04:36:33 -0700 (PDT)
Received: from brandt-slint.localhost ([165.255.54.110])
	by smtp.gmail.com with ESMTPSA id
	k17sm18364759wmj.0.2021.08.29.04.36.32 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 29 Aug 2021 04:36:32 -0700 (PDT)
Subject: Re: Found this on youtube
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <9290E34A-9F86-46DC-ACF7-507E81BB70BF@gmail.com>
Message-ID: <efe42a63-c45d-faf0-fa47-289a51049768@gmail.com>
Date: Sun, 29 Aug 2021 13:36:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <9290E34A-9F86-46DC-ACF7-507E81BB70BF@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


The last I checked, the BlindArch ISO is rather old. I did an install, 
but there were so many things wrong with the install I kept it for less 
than an hour. It would've taken me days to fix it all.


I am actually considdering writing an install Script in the line of a 
NixOs configuration for my own personal use, thus, no choices, all baked 
in to the script. It would probably take me some time, but what can you do?


I would rather do that than screw around with "install scripts". Most of 
the darn things is buggy as all get out, or doesn't include the 
accessibility stuff by default.

Warm regards,

Brandt Steenkamp

Sent using Thunderbird from the Slint Laptop

On 2021/08/28 23:05, Linux for blind general discussion wrote:
> Hi all,
>
> Just found this on Youtube and wondered if anyone hhas tried it.  This is a blind arch install demo on how it works.
>
> https://www.youtube.com/watch?v=72g-2fbP04w
> Matthew
>
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

