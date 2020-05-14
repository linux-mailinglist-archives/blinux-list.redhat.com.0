Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 6F2DE1D309D
	for <lists+blinux-list@lfdr.de>; Thu, 14 May 2020 15:04:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589461457;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LcXOeb0MCnzMwqq+Ykfhem0SkxklFMnoTelbIcjlkkI=;
	b=ZBDmDJBfmERbILYadTokoLTHNlateaMBZAn1eAoe0npJNxhHka1Ergq++yfmKhC+YgYO/J
	D8q1Y+m9wkF4U/gbUgdLjAEGg409q658REwoa+zmiIYkfyGkmIzW2xHhWwmcOrxieHtldF
	AZ/+j08iUOaqax7Lyi3qjK7bsMtaenw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-63-nWVSYd9ZNgiAEtgAPBSy1g-1; Thu, 14 May 2020 09:04:15 -0400
X-MC-Unique: nWVSYd9ZNgiAEtgAPBSy1g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BD638835BA9;
	Thu, 14 May 2020 13:04:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7DBD75C1D3;
	Thu, 14 May 2020 13:04:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 573291809547;
	Thu, 14 May 2020 13:04:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04ED3wJI031808 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 14 May 2020 09:03:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E798F200A773; Thu, 14 May 2020 13:03:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BF1A52028CD3
	for <blinux-list@redhat.com>; Thu, 14 May 2020 13:03:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4F0908007A4
	for <blinux-list@redhat.com>; Thu, 14 May 2020 13:03:54 +0000 (UTC)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
	[209.85.210.52]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-83-K_rvqmSmNk-WZIa-FNjlkQ-1; Thu, 14 May 2020 09:03:50 -0400
X-MC-Unique: K_rvqmSmNk-WZIa-FNjlkQ-1
Received: by mail-ot1-f52.google.com with SMTP id k110so2263017otc.2
	for <blinux-list@redhat.com>; Thu, 14 May 2020 06:03:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=OWcQ4y4ZMqA6UWUlWPOEzjultTxWQ/QIpPlbZ41lww4=;
	b=Zsl+e53vfr18Ovnr0AOywlrV+GSOXqm9LAnlM8t2hsEo2tqUr2UWmsKcZd7NxrfhxI
	bM91SbmihimmqstW07Fq9oBziiNaaprWfphFlY4VymMvsx/vNmAyzHednxfpLdX6i44N
	iDpaA1HnKnrlNnzMupuoHwPjV3NlImVJDtcqH9cjPapSPlPAdKRjabtZpgc22LRfcPZP
	4cKgzQGN99HU0u6VOwGv3EsyORoJFoX1tq4CW3JgP3Qns2TFigCMzSAPol9TFACWHF6g
	3Zt9LCHgKLmk5jFBsZG/aOdle611xQmHMHiP5Cv41mriBG5ZCuUEFG0hdECKK6Wz+fIZ
	KbFw==
X-Gm-Message-State: AOAM533GfK5WfekXWcyIGTLjFi8tAHEzNCTStsed6tZO28lYZ+vBcSUW
	KZFMYZ3QdTlFDxNyioNsP7yM8hAS
X-Google-Smtp-Source: ABdhPJy8yV/G5UDYTuV4N0elXj4LDoBVDUKfvmS6r0tcC0sUVTARV8P2EOlvSpCMZ9OUeJNpf6TZ2Q==
X-Received: by 2002:a05:6830:1241:: with SMTP id
	s1mr3454743otp.119.1589461427066; 
	Thu, 14 May 2020 06:03:47 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:f056:d86a:2327:e844?
	([2601:3c2:8200:9360:f056:d86a:2327:e844])
	by smtp.gmail.com with ESMTPSA id v8sm779452oos.0.2020.05.14.06.03.45
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 14 May 2020 06:03:46 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: b s d and orca
Date: Thu, 14 May 2020 08:03:45 -0500
References: <12986DCD-076F-4781-AC3C-DECFD69D5A1C@gmail.com>
	<A3925F9E-75B0-4E9E-AF8E-EC29BF01496D@gmail.com>
	<b12267b0-944d-d609-53dd-11e9375f002d@gmail.com>
	<FCD3A752-75FC-4A33-BEAE-D96D42DB15DB@gmail.com>
	<b85fb8d0-a4ac-e83f-c82c-38a7886b6bdf@gmail.com>
	<8D288BBE-1C57-4394-AC55-653FD5B17442@gmail.com>
	<8e35d90a-e440-5198-5135-6f3e0a01bd40@gmail.com>
	<alpine.NEB.2.21.2005131357550.23538@panix1.panix.com>
	<def8715b-a2d0-a40a-1df8-af05a4fc345f@gmail.com>
	<alpine.NEB.2.21.2005140518500.10866@panix1.panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <alpine.NEB.2.21.2005140518500.10866@panix1.panix.com>
Message-Id: <FE6B2BC7-51E8-49EC-836B-D081FFF31609@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 04ED3wJI031808
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
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I forget, is this suggestion for open bsd or for ghost bsd?

> On May 14, 2020, at 4:19 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> If orca from alt-f2 doesn't work, maybe try screen-reader and if
> screen-reader quickly dies screen-reader --replace.
> 
> On Thu, 14 May 2020, Linux for blind general discussion wrote:
> 
>> Date: Thu, 14 May 2020 00:37:45
>> From: Linux for blind general discussion <blinux-list@redhat.com>
>> To: Linux for blind general discussion <blinux-list@redhat.com>
>> Subject: Re: b s d and orca
>> 
>> Some earlier versions of mate called orca screen-reader and there was and
>>> maybe still is an f4 key that toggled accessibility on and off with system
>>> default set as off.
>> 
>> Not sure about F4, but if enabled, the key should be alt_super_s. The problem
>> is that it appears to be disabled by default. Running orca from the alt+f2
>> window should work though.
>> 
>> ~Kyle
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>> 
>> 
> 
> -- 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

