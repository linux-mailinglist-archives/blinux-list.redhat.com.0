Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 413F04A339E
	for <lists+blinux-list@lfdr.de>; Sun, 30 Jan 2022 05:02:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643515335;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QjlmU8Ry0sLjRRXKUUifJ+il9nTRKrrONoYRdFbme9U=;
	b=KQ8kVz2TPGWXouv+JglCqR7MMEzyluHVhrflKteYmNyX0VQut+XLWeadBoByzPNAyK5Q+2
	xodGLILHA+MQ77LlJtAUQ8i3CUq/WG8FPQy9iBKGuFp2JIlYFqIJyBfLW7paw1+TruzLqB
	V9sItnZ5QBNfI5e1mNjtphmgpTTls+s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-44-WueFhdaAPaKBf5lKWHIF_g-1; Sat, 29 Jan 2022 23:02:11 -0500
X-MC-Unique: WueFhdaAPaKBf5lKWHIF_g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 18EC7814243;
	Sun, 30 Jan 2022 04:02:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 32FE456F95;
	Sun, 30 Jan 2022 04:02:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6897F4BB7C;
	Sun, 30 Jan 2022 04:01:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20U41jqK000328 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 29 Jan 2022 23:01:45 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6A95D2180155; Sun, 30 Jan 2022 04:01:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 65BD3217B401
	for <blinux-list@redhat.com>; Sun, 30 Jan 2022 04:01:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 69C5285A5A8
	for <blinux-list@redhat.com>; Sun, 30 Jan 2022 04:01:38 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-634-_ADXHGeIO2uREqEmTy88ow-1; Sat, 29 Jan 2022 23:01:36 -0500
X-MC-Unique: _ADXHGeIO2uREqEmTy88ow-1
Received: by mail-qt1-f171.google.com with SMTP id y17so8609877qtx.9
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 20:01:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=GCCZqXy/HYQRSIDVOzgVwTg+V12msQSkWJU0cKsVGZc=;
	b=qC46CXIBH7rrkJ4LvkQQlXIE/ZnLSTgm82alnk1JQ0rA1HQb+VKeZoL4PJHSD02B12
	ZmSRFf1ik/RSEa6/teiZ3+v+yKMB+AncuP5Fzl8+Mg+2Z/TsDu7pIMdsJH1InT4ELHVs
	27l+xKUfrNAFwOMcitMbkZ2Bc8gkJAgk5y5qMh8Mou9c0w9GoX4AvRIj03AqpIxkmEKP
	HSl1SU9fvIeT+srzhv2BbS1eYJYVNC/ovWBQKH5hEhYI2ay0EhpdXed9gY+Oi4Nldppz
	8IlFrhc2XFtgroLGFMVg6ds/Q02uqjOQBtr9aQ04IBrSmVhK9R4c04smZujO+zMtOdBT
	Xg5A==
X-Gm-Message-State: AOAM531tVhQu7lKIcjoD4gHcnUSm4FbHLSELT5S94Qv/OC41VvnX8I6o
	XtKIvFTxYBPfeSw5eH/i1N+hN5EA1e951Q==
X-Google-Smtp-Source: ABdhPJyQleDEd9b+PcCa/M8r5YY5mcbwNRekZvuwS0KwyoyH3gD+CumIVKgc5zFS3wlaWQMVqXHirw==
X-Received: by 2002:ac8:5753:: with SMTP id 19mr10532292qtx.667.1643515295432; 
	Sat, 29 Jan 2022 20:01:35 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id
	195sm6194670qkf.30.2022.01.29.20.01.34 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 29 Jan 2022 20:01:34 -0800 (PST)
Message-ID: <1e6ffd2d-eda6-efcf-18ae-547932ed126e@gmail.com>
Date: Sat, 29 Jan 2022 23:01:34 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Converting text to mp3
To: blinux-list@redhat.com
References: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
	<YfGDHwxeIwHdYMsg@panix.com>
	<3e8211d3-4699-6948-93d9-559a36927ed7@googlemail.com>
	<20220128.190302.486.6@[192.168.1.100]>
	<1c8b1a72-b4c1-f8bb-714d-68d0c7bbfe79@googlemail.com>
	<6c9e57a3-4ad4-b296-58b7-4053bd528eed@seznam.cz>
In-Reply-To: <6c9e57a3-4ad4-b296-58b7-4053bd528eed@seznam.cz>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

The lame command I supplied is very basic. You can increase the quality 
by adding -q followed by a number from 0 to 9 to the lame portion of the 
command. The lower the value is, the better the sound quality will be, 
but the file also will be larger. That said, the -q options will make a 
variable bitrate file that will sound better simply because it doesn't 
require a constant bitrate throughout the file. So I would encourage you 
to start with -q 9 and then -q 8 until you hear something you like.

espeak-ng -f file.txt --stdout | lame -q 9 - file.mp3

should give you a small file that sounds more consistent and better 
overall than the default I posted. Hope it helps.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

