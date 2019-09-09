Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 98257ADDF0
	for <lists+blinux-list@lfdr.de>; Mon,  9 Sep 2019 19:20:54 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 1E7BA302C09D;
	Mon,  9 Sep 2019 17:20:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 01D4B60A9F;
	Mon,  9 Sep 2019 17:20:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7F89F24F31;
	Mon,  9 Sep 2019 17:20:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
	[10.5.11.13])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x89HKLSl029990 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 9 Sep 2019 13:20:21 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1EB5660A35; Mon,  9 Sep 2019 17:20:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx03.extmail.prod.ext.phx2.redhat.com
	[10.5.110.27])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1A2A860623
	for <blinux-list@redhat.com>; Mon,  9 Sep 2019 17:20:16 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id E328781F0D
	for <blinux-list@redhat.com>; Mon,  9 Sep 2019 17:20:15 +0000 (UTC)
Received: by mail-qt1-f177.google.com with SMTP id c9so17049952qth.9
	for <blinux-list@redhat.com>; Mon, 09 Sep 2019 10:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:reply-to:subject:references:to:from:organization:message-id
	:date:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=1eiICTeWFgfBO8N3X7yRFwivtKI+W1m9pnbaFBIAP+8=;
	b=SqBenZBath3xyssdVYZe1Q9HzNW1cbnZcxFG1rptk2uQZ5uR9+0Eh7ZXt8YWyTBPzT
	jmxHGhiGHuD110cRkOH5eeKtbxJzpMc79vHgcQM6/g5S/eGaN1HqbKTNdhwMwyL/srIM
	WwwA4ZUwTjece2Ll76aa2Fe31xOaAmkkBtQ4SeN9LJHPj8ABw37bdhCDJMsKOt5/L5E9
	ogIKHA89F4P0LEgFvRX58+GihloJCsfpUXWeYFLBmj+yhWlEzhnKQ8iHTR8Qnn0qkfdw
	DiVcL9TAYLs3bl6P541UQJ2KgC1TKw1tI27r2nazulFxSqwYuv+5No/KaCgn3F8Aj1gN
	kvxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:reply-to:subject:references:to:from
	:organization:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding;
	bh=1eiICTeWFgfBO8N3X7yRFwivtKI+W1m9pnbaFBIAP+8=;
	b=cRlvuIK+ydc4gNZkQJlBhRya02sPYyOBa33z/iX+x6bUfc7C1G+nDoSAsEsClPDnj4
	F3WADvrGkwtIrWlUohQ9s4fMdTTNd3x9YUnmDjhJKEYzmitOw86TaXwBQBD/BDRF5k/c
	fHUb4TjnLTXqtb2yhX73NWzPqZufUZdmaoM3PSLIUptRlo+iVPYIaGSMI9Ifx6cHfIgM
	/evaOk1aiw+nUjBle8pIREahfpEvjHoWNNJWC2CEsuIsBLWQJ9kf6rQqIZMjfytj17kR
	pmie4pHXXW3Op61Pw7fX1/YUl/r5C0bKz8AwSKR6r6S+QvDdWlBHMfvaRl0qWehStfDM
	CEOw==
X-Gm-Message-State: APjAAAXjtmC+sPdrWfG0ciqCFrYdE4yAlW4RfAO2eG4GiqT+PGjp4VK+
	cmHcBEZz1uc/J5T+wo5YqO15AY5J
X-Google-Smtp-Source: APXvYqzaNB+ZqsEiLPRsZPPY+T+meGQSTZYYOt3Qzpmu3dTaAWgPrI17/rUkef2SKpgKbNS/0tXkzQ==
X-Received: by 2002:ac8:6997:: with SMTP id o23mr24272609qtq.279.1568049614926;
	Mon, 09 Sep 2019 10:20:14 -0700 (PDT)
Received: from [192.168.186.150] ([177.92.44.183])
	by smtp.googlemail.com with ESMTPSA id
	x55sm9731795qta.74.2019.09.09.10.20.13 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 09 Sep 2019 10:20:14 -0700 (PDT)
Subject: Re: Comunicating from your Linux machine?
References: <e2cd82fc-02d9-a55a-abe9-6141dba37f8e@gmail.com>
To: blinux-list@redhat.com
Organization: F123
Message-ID: <bd79fcc8-262e-b178-1518-cf12f5ba9b6d@F123.org>
Date: Mon, 9 Sep 2019 14:20:11 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <e2cd82fc-02d9-a55a-abe9-6141dba37f8e@gmail.com>
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.27]);
	Mon, 09 Sep 2019 17:20:16 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]);
	Mon, 09 Sep 2019 17:20:16 +0000 (UTC) for IP:'209.85.160.177'
	DOMAIN:'mail-qt1-f177.google.com'
	HELO:'mail-qt1-f177.google.com' FROM:'fhfbotelho@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.017  (DKIM_SIGNED, DKIM_VALID,
	FREEMAIL_FORGED_FROMDOMAIN, FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS, RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H3, RCVD_IN_MSPIKE_WL, SPF_HELO_NONE,
	SPF_PASS) 209.85.160.177 mail-qt1-f177.google.com 209.85.160.177
	mail-qt1-f177.google.com <fhfbotelho@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.27
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.46]); Mon, 09 Sep 2019 17:20:53 +0000 (UTC)

I am told that telegram is an option, at least for text messages.


Fernando



On 09/09/2019 02:18 PM, Linux for blind general discussion wrote:
> Hi everyone,
>
> Seeing that Skype, at this time is pretty much unusable, and Google 
> hangouts and Duo can only, as far as I know be accessed threw web 
> interfaces, what would you recommend I use in stead?
>
> Thanks so long for your help.
>
>  Warm regards,
>
> Brandt Steenkamp
>
> Sent from Thunderbird using Arch Linux
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
