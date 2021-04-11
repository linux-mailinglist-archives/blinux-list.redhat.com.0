Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6731135B5D3
	for <lists+blinux-list@lfdr.de>; Sun, 11 Apr 2021 17:09:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618153764;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6TjdFqKhI2VG2bHes6t+t5uRuy0lzcFxG96t+DB6efY=;
	b=LpcDpY41EJtwLwLb9+u9W1zzZKpKYj4YI4IYOW6jaX5tDF3Ipu1l3FsaevcF5M5U6OlSwE
	EpPqKCwoCfuceg0SCpeVnKoiJ3dEKsO3rePO6EJxSxX4STjhDP6+WFGNqLauj3uba1eXGr
	A3910T6ddZH0a1XBFsKTw9OOppOdX3U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-95-FHkyN00sMYKcnTLsq0CEHw-1; Sun, 11 Apr 2021 11:09:21 -0400
X-MC-Unique: FHkyN00sMYKcnTLsq0CEHw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D3A5018397A3;
	Sun, 11 Apr 2021 15:09:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5140A17A6A;
	Sun, 11 Apr 2021 15:09:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 910EA1806D0F;
	Sun, 11 Apr 2021 15:09:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13BF9DdX001818 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 11 Apr 2021 11:09:14 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D606443663; Sun, 11 Apr 2021 15:09:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D04C543667
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 15:09:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8ADAD800140
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 15:09:11 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
	[209.85.218.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-106-WGFueHsrPVuelVPLJ34Ykg-1; Sun, 11 Apr 2021 11:09:09 -0400
X-MC-Unique: WGFueHsrPVuelVPLJ34Ykg-1
Received: by mail-ej1-f47.google.com with SMTP id v6so14815207ejo.6
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 08:09:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=oBoe7k1HmSHSMzkejq1OmrvHzqn09AENJBC6/VFuD3o=;
	b=nTBEfwa/3RPaZrk1ceJZ5geKtqPqroq0la7JpAHcrPV4Zt3Dze8/zj/WSg7170xAvR
	lV6es6a0Tc6JZl5kuRADRGEWwNwF4HyoMA2ttqzQ4QpLPMGtjvG4o8nko+V6aCEhz3Q8
	ENy0mcJo4xRicltD+ZfY7rBk8Ai7GyP0Lq0SZj4UQRtqAD/DxoaGG+N7XfGDUNf2rAXI
	I+Br/NASVPy0LXHChacFMUzZdRm44w1AlZpECxNhDFCruItX0+mLDyUCuNPYx34BPDIs
	hm/Q1nGDN4OZh4hb/jc0n4OaZ5egH7d5kmEYw8LHw2SWWH6Cf5GB7kYnBKKZ2+fjyo75
	JVPw==
X-Gm-Message-State: AOAM533Pi3kkHxOWthPhsP/IpA88v8uz42MYwEy9nl/6PvcFoaRBVZtc
	x8K0xdyJ/v5RFMGAsHjk88dbIx0YSO5O6w==
X-Google-Smtp-Source: ABdhPJwPOcs3hv3TokYJ922OybW1UlSBcUBGFsbbdtCLFiEVlfEoecpAYUQkJnMK39m2RODrHjprGQ==
X-Received: by 2002:a17:907:367:: with SMTP id
	rs7mr9769472ejb.468.1618153747895; 
	Sun, 11 Apr 2021 08:09:07 -0700 (PDT)
Received: from [192.168.1.8] (net-188-153-130-61.cust.vodafonedsl.it.
	[188.153.130.61])
	by smtp.gmail.com with ESMTPSA id sb4sm4135129ejb.1.2021.04.11.08.09.07
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 11 Apr 2021 08:09:07 -0700 (PDT)
Subject: Re: Some questions about Arch Linux
To: blinux-list@redhat.com
References: <7b85da54-e7ac-7b50-0605-ad6c5456b58d@gmail.com>
	<93B89B1D-82D0-4A12-ABF6-5A20BA3EAB8D@gmail.com>
Message-ID: <42cd71c0-6d7d-4f8b-f428-7a96f42af69e@gmail.com>
Date: Sun, 11 Apr 2021 17:09:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <93B89B1D-82D0-4A12-ABF6-5A20BA3EAB8D@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello there,


It isn't a stupid question, trust me!

Yes, speech-dispatcher, pulseaudio, alsa-plugins and utils, espeakup, 
and some other stuff i don't remember, are installed, plus the gnome and 
mate desktops.

Best regards.

Francisco.

On 4/11/21 5:06 PM, Linux for blind general discussion wrote:
> As stupid a question as this may sound, did you install orca, speech-dispatcher and espeak explicitly?  If you just installed orca, you may not have everything.  Do you have a talking system with espeakup or fenrir?  I hope you installed pulseaudio?
>
> Cheers,
>
> Dave H.
>
> Sent from my iPhone
>
>> On Apr 11, 2021, at 10:57 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>
>> I also modified the .xinitrc file at /etc/X11/xinit/xinitrc, since that's the only one which is available, and I inserted the following lines at the end of the file, after installing the system:
>>
>>
>> export GTK_MODULES=gail:atk-bridge
>> export GNOME_ACCESSIBILITY=1
>> export QT_ACCESSIBILITY=1
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

