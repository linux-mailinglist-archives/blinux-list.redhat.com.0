Return-Path: <blinux-list+bncBCVPTHE7K4IKVDVSYMDBUBFN6FPCQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id E2053AFC107
	for <lists+blinux-list@lfdr.de>; Tue,  8 Jul 2025 04:49:16 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fb50d92061sf63978726d6.3
        for <lists+blinux-list@lfdr.de>; Mon, 07 Jul 2025 19:49:16 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1751942955; cv=pass;
        d=google.com; s=arc-20240605;
        b=i2wLNLO06NzO28UXVHCD3t948IFDW4TLC8GvsSDwPfR/4TfyW+bR7Rwd+LK95lTaPl
         7f+jtjPsm1SMBQm+5sHR2Dk8lF7Nfj7j5cc9053D4VBCZOyi8MaG5P5w8afRkdFfGkiL
         eNvCIa0Pp8fVznOpOuLQkuPYNNgSs4kH5/IV66A46/fNFfmz9qv9yTi6THonKQq0fvJz
         r55TrAD4XqOGvMoBeL7jk0KC+MbTxWuQRa4uzmD1Zio6molrKFSUZc2m/teD2vQwjESJ
         8v/Nf9F2znKBAjOwM/XjXaoFyAZOJEShnlv6W23HXWhDLW/t/gOFUnm1ET6XwF0eOANi
         EEtQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=qLyRAivehn4KA6ZvG1MzcNWr4g6856XNt5Zra4t6nEs=;
        fh=6lqTQ0Z06dhYDCORcXXpmeArWSS2HKvCNm1GnMpv6X8=;
        b=kp6yvPb86HCpNisCo9xGwUSEi8GVF6a5KHStznZfJ5btn0GUvqgpkJUHEt5tqmPdRB
         m1KgZ8/ZGnIyhKdrzuL6W2IkUNW/CWESXYgugxB3Q5ETyrC85ZY17NIFeBkFQs2/7JjJ
         UknSCkj1i7ni3PounqyLMOVA6HOS2z2N9MbGOm2lN9O9popHCjmnwJ478JM++MQP++yx
         Q50royo+pISXgLYRY2ViIPqeyNVsIUOrPin35Ir/w0/RsH+BCawv95IPp1/gnRM2Onf9
         npgvcG0j9oOrXhDlY7W4fCObhGt77LRVwlx12ydCUVao5lJc68HERquLMYjbSGbn7vYL
         h+Aw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=shellworld.net dmarc=pass fromdomain=shellworld.net);
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751942955; x=1752547755;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qLyRAivehn4KA6ZvG1MzcNWr4g6856XNt5Zra4t6nEs=;
        b=Tix+4h6b5dgtoB2yRPGKRzSnJYUiHDWbcOeHlhNol+iJ4SNRUhG23xE0YnH/01SVhO
         yoEDPOXhgjnho4eVyYIOHMWIVKd0UmdcsOPsItbAQqwVa+IP4n78OCzGMng5zC3JvIxr
         bO8Luv/ae6VfPE2g95ZCrVR6kiTMysn/Ty48pcYWzeBjfaRRPwaN6zVrk2oHRdt4ANd2
         hErO3voox196pTg4bbUrUqPiwAEMzBUiR8d2DOarOPEDnzWPXep7+HMxNoCKYUy7oVal
         udlZvh++/GDK/Y17yXKgdNeUOAgnUhbeedb5sA3DPaIwX19u0dIC5RtFxOcWeEqbA2aN
         NFaA==
X-Forwarded-Encrypted: i=3; AJvYcCUAH1DzJ73UiI/AGyizAxwgQwfkCez/gCAgLISPob7hdqn6qJX+VgqUDlm3ZjlHkn0UqEaPGw==@lfdr.de
X-Gm-Message-State: AOJu0YxibA/kHE4Qk55Rtw5njtIH3Y7r2a49+PYWuTFFEq30Bh5sRE5z
	Xm9w53M5jtrc/H69EmnKdmg/2D8yvO8Kia/0fE94sWFAHwAeQ/9rPO7obSH8NdMxcSk=
X-Google-Smtp-Source: AGHT+IFly6XKBlpcwrrDmahaGZwgjGsAxMYIRAS8jnKadEhqKFkjwlpnbLEGLPTyG+8T7rxqkwQujQ==
X-Received: by 2002:a05:620a:2590:b0:7ca:dac1:a2d9 with SMTP id af79cd13be357-7d5dcd0ad0amr1828550185a.28.1751942955178;
        Mon, 07 Jul 2025 19:49:15 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZeY9t4mf86nAZ18ZkwgJ7bDHpdr5rUklXNbIuwzTrmTBQ==
Received: by 2002:a05:622a:1aa9:b0:476:9c9c:1a5d with SMTP id
 d75a77b69052e-4a99be51652ls58121321cf.2.-pod-prod-05-us; Mon, 07 Jul 2025
 19:49:14 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVC7+sAMxk7ydSFjk5idMyG53IAgVYbJ0I3wWXYpVoy44RuuC4ugIOtxoMuVXf7D1ON11QQqHAdTBkIbA==@gapps.redhat.com
X-Received: by 2002:a05:620a:462c:b0:7d4:2854:7960 with SMTP id af79cd13be357-7d5dcd3380fmr2372397385a.48.1751942954055;
        Mon, 07 Jul 2025 19:49:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751942954; cv=pass;
        d=google.com; s=arc-20240605;
        b=lUScAYZ+BTr2vlKvrDpgzYDGYDgm2nvAm6ty+Y4BBroUPCVHFv8s5+TOZ/2f8gFkbA
         9Q8MYDkpqRX/tJ/Fw+HyLakVXKeSNsmrbR8I1mhvW3kv8mOP98nRmKhTHgUChjcxSftp
         ftHn89Q7d2LTV9G26Y4nXJFzpndpdQt4z9my0PiotgFxMtuAM/sUSjKFzpEtBpBSBIIC
         1y6emnP7apeuB8O5mYxGKThSDKXQWedmF95lWe+A0k6bnN0WhpkmTlOsfjN3EHEdaxd5
         VbVjnM0tZdBkTtQLTjWcvHmh5chB/n7F/9tF2GuU312UzqyKhUVHFocBAi3brycE+f6l
         YHJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=qLyRAivehn4KA6ZvG1MzcNWr4g6856XNt5Zra4t6nEs=;
        fh=1AxjPQcxtlIhkMLAM0kPYF09a9fAE6hQ+5FcnLINsRA=;
        b=lujfDxOgPoQD0Q6caO6KzLfuzjV+jZOB+192niWMkOcfW6CxT5egekUUlz9TVCIUu/
         0l38y5iuK9GNhwdsYMRGe7fpuo0nMPI/XDsRBWm6T3wnCJnBAtvmnziuna69SildhDHe
         KQi7ysr3j8/Zgxlq/zSSKcfLwnWKBSMPY2JNrHVEMn7NatlpSu61BdefcZl6brjDffC6
         s2AzZ04w4oluOfNTGMQZGpgmELCx4yy9EcgT2ILcTaQOtatjXpjlQSWpPSqEXL//NU7f
         PGli7f44+AD6zp9KuPZqjVNaduJO6dp4+JxjW6NLKwWwOJu7pyo80O2T4hq7QDp/BrR1
         FAog==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=shellworld.net dmarc=pass fromdomain=shellworld.net);
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-702c4d490f4si94805336d6.191.2025.07.07.19.49.13
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 19:49:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-381-A62-kc5cOIKcm1Aw3cQCZQ-1; Mon,
 07 Jul 2025 22:49:11 -0400
X-MC-Unique: A62-kc5cOIKcm1Aw3cQCZQ-1
X-Mimecast-MFC-AGG-ID: A62-kc5cOIKcm1Aw3cQCZQ_1751942950
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5CF6919560AD
	for <blinux-list@gapps.redhat.com>; Tue,  8 Jul 2025 02:49:10 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 586F019560B2; Tue,  8 Jul 2025 02:49:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5586319560AB
	for <blinux-list@redhat.com>; Tue,  8 Jul 2025 02:49:10 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C583F19373D8
	for <blinux-list@redhat.com>; Tue,  8 Jul 2025 02:49:09 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1751942949;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=qLyRAivehn4KA6ZvG1MzcNWr4g6856XNt5Zra4t6nEs=;
	b=G+v50/taX/K9JF81qh0tnu6U5MJMiOoKIoPj0UAr/KKry20W7i5x03oIpZJClAnlc+EwFJ
	JoNFpjw2w0hv8fS76JxDDgb5oqX3JuQwA4puFEQKGAW+J0Xnjhj00GKQFPFNsA+ALIvO8w
	QayQFwtH8lbzQmSQjsXRSDAO4ijX96A0kd0YktDmp4drecyc2HltEXYlkshBEUtssU9egv
	fdSm8er5VU6laGXThc+5gESNY25bizoN9W5Irs/DA1oECO9CUV+1duK2INLYMGiBIFC3BU
	dqQRjVu1wAJcqILQLDtzN+GdLVxH8vdkkwjPzn7WXPXm/4xHlL9L1t55fTX7LQ==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1751942949; a=rsa-sha256;
	cv=none;
	b=pC3wKlmhNsqwFFE10zOHk3h1Xq08fFOLMlDDwVMhHHPUrFbpymz3IrQ9RtXr97efEJHzQA
	M86Sz5qwMNDWEqE0rT1AkNuuKX6CfVS7YyobsvLNHXOVHOH3Vz0+pKT/i8qIb9Mp35PYwz
	hu2fAU64zInFYVGyY4mCwpp/wKWUX4wyMVC3RMEyLa5v2+cEVCIdxeB5ms/x449j1PJDUC
	7lJ8K2zc7DhdSw4Tm6lCP9227xcgj3FMO3f04S2MPjKELj2jIvd9e/FSqwQhvV70tKkzL6
	B2dynAO5HHiM2N7rva7SArytLigbu6LPVeUfSw9Qrm1Vt6HgjGeiIk8o9AyH/Q==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=none;
	dmarc=pass (policy=none) header.from=shellworld.net;
	spf=pass (relay.mimecast.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from atlas.bondproducts.com (atlas.bondproducts.com [23.24.6.165])
 by relay.mimecast.com with ESMTP id us-mta-644-CSFl0WqLPa-9lEn3jOVt4w-1;
 Mon, 07 Jul 2025 22:49:05 -0400
X-MC-Unique: CSFl0WqLPa-9lEn3jOVt4w-1
X-Mimecast-MFC-AGG-ID: CSFl0WqLPa-9lEn3jOVt4w_1751942945
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id C6CC640508;
	Mon,  7 Jul 2025 22:49:03 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 87241100BB3; Mon,  7 Jul 2025 22:49:03 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 8625F10008F;
	Mon,  7 Jul 2025 22:49:03 -0400 (EDT)
Date: Mon, 7 Jul 2025 22:49:03 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Chime Hart <chime@hubert-humphrey.com>
cc: Rudy Vener <salt@panix.com>, blinux-list@redhat.com
Subject: Re: Firefox Talking Book Downloads
In-Reply-To: <7fb2821e-6df6-4298-cd18-e789be3c8ff4@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2507072247320.2297579@users.shellworld.net>
References: <20250707113219.039745@wb5agz.lan> <aGwVCQ1QYN2uDHwu@panix.com>
 <7fb2821e-6df6-4298-cd18-e789be3c8ff4@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: -4
X-Mimecast-MFC-PROC-ID: ZjaaHXrp37hrxqXiswMIazLXz7oDAlwfSYncRM7AfBw_1751942945
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       arc=pass (i=1 spf=pass
 spfdomain=shellworld.net dmarc=pass fromdomain=shellworld.net);
       spf=pass (google.com: domain of klewellen@shellworld.net designates
 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Bard can work fine in Lynx.  As with many tools it depends on how lynx is 
compiled.
I do not personally either care for it, or use it, but I can log into it 
and  so forth.
Karen



On Mon, 7 Jul 2025, Chime Hart wrote:

> Hi Rudy: I didn't think these library sites would work with L Y N X? If it did,
> I might think of signing up. 1 time a friend wanted me to look on Bard for
> something for her, but there was way too much javascript.
> Chime
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

