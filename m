Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F134CE4F2
	for <lists+blinux-list@lfdr.de>; Sat,  5 Mar 2022 14:03:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646485423;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xvYSdPoc50O97+qkHH6hH3eHjb7CzyRWOOtl3iCcKCY=;
	b=R7tJdd+om7fA4ROj5SW89dipzG0NfKbVH+6lfRPR40Cgm9II6VAdUrMdwh8ElYKH0sa+Ey
	KaYNdApHLpH4QxJwRYjsscr+oqFkchHWx0f1liAp1jSQilclHfYs22xSg/0JQeA6o4vgiV
	XpZqxYewthFfQNsPdvyCsxdD65inAcU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-170-Pl8md09ONnyTXjH2ON8z1g-1; Sat, 05 Mar 2022 08:03:41 -0500
X-MC-Unique: Pl8md09ONnyTXjH2ON8z1g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 94695824FA7;
	Sat,  5 Mar 2022 13:03:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CD3717B8D5;
	Sat,  5 Mar 2022 13:03:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 80CDF65D0A;
	Sat,  5 Mar 2022 13:03:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 225D0fbv005226 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 5 Mar 2022 08:00:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C6B4D40D282B; Sat,  5 Mar 2022 13:00:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C2DE340D2828
	for <blinux-list@redhat.com>; Sat,  5 Mar 2022 13:00:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AC1862A5954C
	for <blinux-list@redhat.com>; Sat,  5 Mar 2022 13:00:41 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-158-bgAsVmW2M0i7auVp2E8c2w-1; Sat, 05 Mar 2022 08:00:40 -0500
X-MC-Unique: bgAsVmW2M0i7auVp2E8c2w-1
Received: by mail-wr1-f49.google.com with SMTP id u1so16421387wrg.11
	for <Blinux-list@redhat.com>; Sat, 05 Mar 2022 05:00:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:to:from:subject:content-transfer-encoding;
	bh=nQoap28w/PwBZpNcihct1mwXFo8OmkF04mkXvRJEG2c=;
	b=QgmwihX9ZJlAA0Z6sZlIW9PAx0fvoRLrKhVbM9SGoJ90f7/2TV7cVl398ms+hRyvOE
	e41qOzJXH3pEEIBc6Ch00ROkikNpiR/rr7HnQTKPvTVp/DbbskTPBD2Y8lobtYlI2UGS
	l2OkyygeStmPETgUabvgQpB/VLgql08bqWZFPSu9H2ZlE/5o2gtdJ8g6e9fPcO5gWafF
	DK35peXp5PmGdtcHsBYA+Jtg8liazAC1A3G+cpSzBUsrMDfkJdQ1Xn2okWwwWAR3n6/V
	uM0hhQ7U6Abl+j+2sSTx4A0K01NPrJi6afYEcA6hIKN+JHBE82OILle/OLwQzN9oXTfb
	filA==
X-Gm-Message-State: AOAM532dZURrFY4JS4/EHLsQMWirGPc5qNUVe9k7QcRQml26JVlWOX5g
	5yPmEtKTPMf7HnuvLXbrXzPtcfd5XWBr9w==
X-Google-Smtp-Source: ABdhPJxhk1tJXWwFDBGBNiZtiTQTAbHHf1jDAAGQOmwCVZoMbCSWGbPx69LbJhWqOVLZ+IYu174i1Q==
X-Received: by 2002:a5d:4485:0:b0:1ef:d619:4de2 with SMTP id
	j5-20020a5d4485000000b001efd6194de2mr2433004wrq.88.1646485238481;
	Sat, 05 Mar 2022 05:00:38 -0800 (PST)
Received: from [192.168.8.130] ([197.184.176.12])
	by smtp.gmail.com with ESMTPSA id
	q124-20020a1ca782000000b00382b3260778sm12711501wme.3.2022.03.05.05.00.36
	for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 05 Mar 2022 05:00:37 -0800 (PST)
Message-ID: <8682c221-924e-6c20-8595-4f4fd9c3ff37@gmail.com>
Date: Sat, 5 Mar 2022 15:00:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.6.1
To: Linux for blind general discussion <Blinux-list@redhat.com>
Subject: Keychron K10 keyboard and Linux
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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


A good friend of mine just sent me a Keychron K10 mechanical keyboard.


It supports both the Mac as well as the Windows keyboard layouts. 
However, for some reason, on the Linux system, I found that many 
functions doesn't work correctly if you have the keyboard set for 
Windows. There are some things you have to take in to account if you are 
using a Mac layout, for example, the Super and alt keys are switched 
around, and you need to hit FN with your function keys, though I really 
have no issue with this.


The one question I have, how do you connect a keyboard using Bluetooth 
to your Linux machine from a TTY? I'd prefer if this happens 
automatically when the machine have to be restarted, getting to the 
physical laptop is rather difficult at the moment, since it's on the 
back of my desk.

-- 
Warm regards,

Brandt Steenkamp

Sent using Thunderbird from the Slint machine

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

