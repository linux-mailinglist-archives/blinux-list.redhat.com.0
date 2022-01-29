Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 686214A303D
	for <lists+blinux-list@lfdr.de>; Sat, 29 Jan 2022 16:21:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643469713;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eYSK+CvCOjKIdjGrC86JXQOnClDlNiyVWSxbQ6RFxaU=;
	b=DH9OVbTrXTVrGT3xrOGqpaflUufvDmBTJwegO5ySZ3cW+G9FOH2ArnV/y1CFt8rLR7S2gT
	bbzJnD5S+iOJMY2BsCfqcUqsdBK7FIFKbdJjgM9cBX21HP+NC3TMEUuRwTPO5W8w8V5c3+
	egWq6mZ+lbh6TWinhlO4AIr8mAug/TA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-38-TL6yZtfbPNap7XZ3pDCCvg-1; Sat, 29 Jan 2022 10:21:49 -0500
X-MC-Unique: TL6yZtfbPNap7XZ3pDCCvg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D8A6F801B0D;
	Sat, 29 Jan 2022 15:21:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BE5F17D3CF;
	Sat, 29 Jan 2022 15:21:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 741541809C88;
	Sat, 29 Jan 2022 15:21:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20TFLZse020562 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 29 Jan 2022 10:21:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D7061401471; Sat, 29 Jan 2022 15:21:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D2CF8401E53
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 15:21:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BB0903C01B80
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 15:21:35 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-575-IFEUg8D5NY68mCtBu26ZHw-1; Sat, 29 Jan 2022 10:21:33 -0500
X-MC-Unique: IFEUg8D5NY68mCtBu26ZHw-1
Received: by mail-qk1-f169.google.com with SMTP id m25so7227300qka.9
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 07:21:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:to:references:in-reply-to:subject:date
	:message-id:mime-version:content-transfer-encoding:content-language
	:thread-index;
	bh=isafsRTMsCuJZoud1pdzTvxBmONa2tA6MOcMnNTnhc0=;
	b=ZO7dUokM6aaT1b/e2rMFxs+VYK9MYCouLUyN2qFP0wEUPJJCZ9Ji6sYTojrzzhWDxN
	fgn26Tla7gTRFSqXfUI8i7HCIArz/D7uc52f0JSBhGTatTqRN4IteMs37yRBD8ybSu2A
	oPq+Be5LMnha41PbdaxRVOgEk3wuMVehMfqXU1nGpAauNuC0zODKX8ZYuyiYXBnoczR9
	RoJ2LeSRrJUimKmWi3w/VUdrWwpXR33IjLN/9tuY2mlLaDn/Rq3sxJ4ZA8gGDGqwaIGi
	kuJDZBCSXVVqTStd/7H2cY/KyLI9WqGmWGD7MHc7EqGuJpBh4j0A/5rgNq1pWDfvRD/F
	s/MQ==
X-Gm-Message-State: AOAM530pE9DtuIQlcCnWv4BapnD+5yMGPYm6xOCNxlmwcAPzAKRG87r1
	nAOGrTnVuc/OgQ513IIRIttFcvucxcf/fA==
X-Google-Smtp-Source: ABdhPJypZTdSzx8PMN5O54sBpU5pGkPQW5BEQk85JpHtxE59rxg4KN3KiGwGRFneT571GkqK8mIM3A==
X-Received: by 2002:a05:620a:408b:: with SMTP id
	f11mr8947018qko.130.1643469692832; 
	Sat, 29 Jan 2022 07:21:32 -0800 (PST)
Received: from ElBraille
	(2603-6011-ba01-8300-31d4-92db-c779-d466.res6.spectrum.com.
	[2603:6011:ba01:8300:31d4:92db:c779:d466])
	by smtp.gmail.com with ESMTPSA id r3sm5157191qkm.56.2022.01.29.07.21.32
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 29 Jan 2022 07:21:32 -0800 (PST)
To: <blinux-list@redhat.com>
References: <2930A22F-EA6A-4939-A70A-6C92AF95E4CC@icloud.com>	<84ff2447-0200-a2ae-1d7b-1d62d6853c17@gmail.com>	<79793ef9-1158-eb3c-cfdb-8cbe2aa9bb1@panix.com>	<9b23be50-9125-dbe1-66f4-03936e6c2aa1@gmail.com>
	<55d93fef-37e8-765c-5f48-fe5e859f052f@gmail.com>
In-Reply-To: <55d93fef-37e8-765c-5f48-fe5e859f052f@gmail.com>
Subject: RE: Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso
Date: Sat, 29 Jan 2022 10:21:31 -0500
Message-ID: <03b201d81523$e544a730$afcdf590$@gmail.com>
MIME-Version: 1.0
Thread-Index: AQJ97epC6VTyPOqA8AIWdEGIcJlUHAIj8TE7AfBE2GsCD+qflADtcjAPqvXe6UA=
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-us
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

What we are referring to in this case is running it on the fisical machine
rather than ina program  to do this.  HTH.

Matthew



-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
Behalf Of Linux for blind general discussion
Sent: Saturday, January 29, 2022 12:39 AM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso

what is bare metal?

I keep hearing that term zand am wanting to find out more inmfo on it

On 1/27/2022 6:10 PM, Linux for blind general discussion wrote:
> It will be interesting to find if archlinux on bare metal using
>> pipewire runs into sound problems.
>
>
> I don't think it will have sound problems. Everywhere I run Pipewire 
> on bare metal, it just works with no major problems, and actually few 
> minor problems. Fedora and Arch both seem to work on bare metal with 
> Pipewire. Virtual machines, especially Qemu and I believe VirtualBox 
> as well, seem to be the only places where it appears to have trouble.
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


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

