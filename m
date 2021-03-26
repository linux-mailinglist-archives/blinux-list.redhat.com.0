Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 539E234A777
	for <lists+blinux-list@lfdr.de>; Fri, 26 Mar 2021 13:41:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616762506;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yN2+l2ChMxADnDfdP5rdY/dnFgWiSnSeW+Aa84oWqE4=;
	b=YW7nwvYhSdmWqyLJf/6h+JosTQwrrWTzxsY2UVx1zuUBPszqXFQAR6I6qdMFMEAfleuQQu
	oFxWkpV1z4lRXBKHzfjC1xqRHyK4dExRlmwMyL3LjvW4lwEYudl85GA2g1MMlc+UuAvaAD
	n3GZT3t3szMaiLxoYkHamhXkcyx0joY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-515-Pen-_VJdMB2cmqI25WbVKg-1; Fri, 26 Mar 2021 08:41:44 -0400
X-MC-Unique: Pen-_VJdMB2cmqI25WbVKg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 057B3190D345;
	Fri, 26 Mar 2021 12:41:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0EE802B0B9;
	Fri, 26 Mar 2021 12:41:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AD2654BB7C;
	Fri, 26 Mar 2021 12:41:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12QCeTqO006860 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 26 Mar 2021 08:40:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0FA24117C2C9; Fri, 26 Mar 2021 12:40:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0B18A117C2C5
	for <blinux-list@redhat.com>; Fri, 26 Mar 2021 12:40:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 07927185A7B2
	for <blinux-list@redhat.com>; Fri, 26 Mar 2021 12:40:26 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-294-GCDb52NNO8y113OCEClfSw-1; Fri, 26 Mar 2021 08:40:23 -0400
X-MC-Unique: GCDb52NNO8y113OCEClfSw-1
Received: by mail-wm1-f54.google.com with SMTP id
	d8-20020a1c1d080000b029010f15546281so4834695wmd.4
	for <blinux-list@redhat.com>; Fri, 26 Mar 2021 05:40:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=ng9Amr/Xt5LMupZIvcDZSVOFeLiFOSaJU952YJrG1Pk=;
	b=rj2q9ZYlN2LAJI0KjjTamOuxUhqNbVjLH9hXaBAoSZQs/AZOmj/1Rm9ZDV2dFNj2rm
	w8eBKITRWFOb9oq3Fu0ekEWzuJDFm040n9fYqfUbYYKfW4UdcZhe1dA2LLncl2LlmbPn
	FisRX+gkBIiI2HUmyglCKkbZCR4oWEK+5Kw+goETnYyVgqXq8XUg3n3vEAsedRgj+Oq2
	pVvO6lGNUnUT9bDgYmk/4Y/90h8azocem6b9G+oOveW4LN3bUjqX/n/jWSN26MzvrCMl
	NfLUtaNg8vAdbyO0wCNVEOq/fKQiPEVlk+FWmp9zWjNDQA2in4bRKn0VlMl2rxaNxn7X
	sUxw==
X-Gm-Message-State: AOAM530hFJy1I1n21oPODLObGkko1ltG36Eet8pzFJh+PY6GRWbw0DVJ
	KM1iXjzaKbdhudP+Z96e7TIxw/CNbS3uXA==
X-Google-Smtp-Source: ABdhPJzSMc6jp3dSQBsiY/UtBbSw4NWJTlb+wBGllE18bg59p5TfL0HpP7XSpby8m1njflfvQDi5ug==
X-Received: by 2002:a05:600c:2254:: with SMTP id
	a20mr13368108wmm.115.1616762422003; 
	Fri, 26 Mar 2021 05:40:22 -0700 (PDT)
Received: from [192.168.1.7] (net-188-218-192-204.cust.vodafonedsl.it.
	[188.218.192.204]) by smtp.gmail.com with ESMTPSA id
	f2sm11658979wmp.20.2021.03.26.05.40.21 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 26 Mar 2021 05:40:21 -0700 (PDT)
To: blinux-list@redhat.com
Subject: a LITTLE INTRODUCTION AND A QUESTION ABOUT EXECUTING fENRIR
Message-ID: <b5665e31-49d1-791e-2465-96fab3ebc6ab@gmail.com>
Date: Fri, 26 Mar 2021 08:40:20 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.7.0
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello everyone,


I'm Francisco, and I started using Linux a few months back.

I started with Ubuntu, to then switch to Arch for a bit, and then, 
finally, to Fedora Rawhide, which I'm happily using right now.

Both for fun and because I need it, I installed Fenrir, but when I issue

sudo fenrir

in the terminal, this happens:


play FAIL ao: startwrite [ao driver]: Corrupted encoding data (bits per 
sample should not be zero)
play FAIL sox: Sorry, there is no default audio device configured


Did this happen to any of you?

If so, how would I go about fixing it?

I already configured pulseaudio with the provided script, bTW.

Thanks for any answer.

Best regards.

Francisco.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

