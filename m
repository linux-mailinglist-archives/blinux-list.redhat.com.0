Return-Path: <blinux-list+bncBCRNHOFA7YJBBTVVXLFQMGQERZP6JXY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id E59FED3B8EA
	for <lists+blinux-list@lfdr.de>; Mon, 19 Jan 2026 21:57:52 +0100 (CET)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-50299d2e742sf199741961cf.1
        for <lists+blinux-list@lfdr.de>; Mon, 19 Jan 2026 12:57:52 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1768856272; cv=pass;
        d=google.com; s=arc-20240605;
        b=P6Nd1uyswa9zuH5ZxJcQlXUcHNUJ55sfBxiMqoAfhM627AfqJonWbEzyyB9khEGROf
         vp5tSy9jTerv9E23oncEg6fE1JYEwt3/xbbHFDbDZ6QgX2iU6NfoWFDORrkDr8BVuapz
         UaxZG0D7ELB34vmkKmWsSEUE8c6PwP1bkIDK91uKhAiX3oNR24JCFTvJGQw7lEWOoYd8
         gMhCY3u3Wv5G4RdtNmqyqxp1OFVZzO5OTg3SkF+JQaXKWhnSeieUkiBJdd+EifXcm8L7
         JiRRuIZ22oZw4+evibSttWVaQ3NsYU0q/GTAY5zdpCSZDjyqpKLD1qjJOxuICRKxTR8q
         N0DA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:to:references
         :message-id:cc:date:in-reply-to:from:subject:mime-version
         :delivered-to:sender:dkim-signature;
        bh=HYne2nU3fGE9ScyNCBQfQOvp9QNSto1nMRxwLnFZJyM=;
        fh=1oTsCW2wE0zUIzlAzho8VLbBcJ0+9l132qXNnMKoDjA=;
        b=a6utrSDBmojiRNRUWcoCd5pNxo9bk/mDJYMce961sp/HI5FTGMoqTtxAkReu6t+95M
         S1bmOXQ+U2efwTx21ucTdPQzqEbsuK0TSSfXSPNhDrfBVVjh5iaOZ//hSRLY4JZAQ7ab
         IZ41jNoB1k/dgSF4+NuWNdEpphB8QtqxWV5knzSsYOLxv7ik/w/W0qyUf8VTbtp0kmmM
         NK3ar/iOE0KxxzlNszBgEaWFbM+G/1H/e/B20a2qN2YItF8dnrEF3z+GQKmHHY4raP6V
         Y1rYcyUIgyzfTug4z+PKm/n+YtLxmxgDB+zIOSQ5sSOS07/rt8jJZASb1vul1CfISZAr
         UiPQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@cfcl.com header.s=google header.b=Wmx5iEHI;
       arc=pass (i=1 spf=pass spfdomain=cfcl.com dkim=pass dkdomain=cfcl.com);
       spf=pass (google.com: domain of rdm@cfcl.com designates 209.85.216.50 as permitted sender) smtp.mailfrom=rdm@cfcl.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1768856271; x=1769461071; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:to:references
         :message-id:cc:date:in-reply-to:from:subject:mime-version
         :delivered-to:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=HYne2nU3fGE9ScyNCBQfQOvp9QNSto1nMRxwLnFZJyM=;
        b=AaSCPDPBysbVd9W7+bgPTINBURKcKR2fqM2WlIA3tWRO20pdJLJyg2quBhx9mhulqF
         5cCH2L2PbYtyAQYAS2yCC/TKbvMmlxopTC+Jwo5bfCwRtVEI9vsP+ankz7GLECJs3PPk
         Hogvv4ZRuUekD5cSF5EDA85GBUWtChuZlbDohjpc8jfppoTh36FFYTssr69oJ0h/+mVD
         0NE5SJcDo2dx6/Dy6/rMPl/yaU7gEbTFWehFv6sqsceHRmzkeZrGTBTrXMUppoROg8QB
         u0w+riTWZfZPgO3WnH8AXkMu2TNCWvVpST/Nnly9POPcRdNNXa/fgavkZw/+Hu/cywUu
         YHTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768856271; x=1769461071;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:to:references:message-id:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:delivered-to
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HYne2nU3fGE9ScyNCBQfQOvp9QNSto1nMRxwLnFZJyM=;
        b=X+HgAm6gb9cGq+uVjZNmIezsmDHWy2Jro/DEc2nIUqqGbGpViZgTtGivp6gEyuVtEP
         UzU22KYvqhQMgqtVy9Hme75mWCs6NSjHD2aaWIBIiuMlIIHIbqknDQDh7rKhBL/LUh0P
         XHI4s3XhXHWejhgiGr/p36UwHPXa7oAAbYW0WETpvLmfcUGekoEEYTsbc7/TQHMGSAy4
         gYuxqG+0nI5Rye2zcxNdgf1iwWxv/Ow5s+1gVLmaAHsqRRDRrlnvRlm1xR/kNCtxS5zS
         QSL7qwEwVCMnh7i6BVTnV8XwsESChkznp/RteFVjXjNKSuGsVPi2hUDhhMqWhGVVdWvR
         bxDA==
Sender: blinux-list@redhat.com
X-Forwarded-Encrypted: i=3; AJvYcCWqcg0uIJohfEbBYWM+a8StTiYc4eBpp8h30m+4BiBoa6lO42nhS8R9vfOP8onYBvFus1/5qQ==@lfdr.de
X-Gm-Message-State: AOJu0Yxlz3k2tbuTfEQ+QFaoXkIFOIeDtkylCyL6DHUfoFjyf7rvbe3v
	6Y5Idqtwx/Y/Bxu72d2rldaN+swe/Oe6gSnI8cpY3T0WM2UGRq258Di3xdFYXWGNQ5A=
X-Received: by 2002:ac8:5d8d:0:b0:501:4a67:971b with SMTP id d75a77b69052e-502a1e3bf18mr176150541cf.36.1768856271319;
        Mon, 19 Jan 2026 12:57:51 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h="AV1CL+HX6qoaxJ7fwxtCM+zkpvuygTlTPveqt7SgD8NtE+cl7A=="
Received: by 2002:a05:622a:91:b0:4ed:d8e7:bb76 with SMTP id
 d75a77b69052e-50214a14afcls102482191cf.2.-pod-prod-04-us; Mon, 19 Jan 2026
 12:57:50 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCXU4k2f7otdW+C+EjLrKuwjPc+frNtlBF30BCa1ehQMdOAXnEWORKXle0hRr6Z31Kj86fHgFMZqvnQFrQ==@gapps.redhat.com
X-Received: by 2002:ac8:5ac2:0:b0:4ee:24e8:c9ae with SMTP id d75a77b69052e-502a1f21c1cmr191638661cf.53.1768856269964;
        Mon, 19 Jan 2026 12:57:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1768856269; cv=pass;
        d=google.com; s=arc-20240605;
        b=XC/7k5b/IF6HHRyqYhStGCmijSNmxv4dpumWz+Nn13/atAbQNOaffpynz9oUR7DmGs
         cHie64mvYREiFO/PtwWSNCbC5bCmxxctMJ+ihom9zqwKdsZbmp8u1DowWqMfM4Nlr4px
         HmNx2g4PsP9mSWrFgrY1hfA20Iz4odLeW4B6r0xYvY29URqYL4rCeY4qAmjvPnuzaVZh
         v8NSKvJ7y7rlR9asybNP8LsTrrFmYfKBWz/Y4PRE/xoPrKyOD93sXRUzQz3xVy8jqG0F
         biN1vDOruxTxowBuk7p2LnX3jUUVQgLJyHVbVrfirez6JQcZsf2SfTtnRtshyFW9xedm
         bYQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:references:message-id:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature:delivered-to;
        bh=JDWEv6NJjI2S2dlS6JrFOkEbIP9lvTmHL/9nEKdO+Sg=;
        fh=HQWK3cpOLwsnWKoQHOi5yGhPRio9745ZKdcRRfzAszU=;
        b=hUHx5HRAXARJ7yodqu4sy242yOEiipZfhOo6OgG9jcZjhtS9aRoUPAVy3wTN0FnKlc
         pl8ghux0vrhjXMu1jUrMrvi+FIDOb6LZkjt6kQWAnmq2rBAidmmWJnb+0qv1PB7HCoJV
         44YOTvkgQHUogfKeKteudaXOhYrMp2DgZlIgEMlyXFUpEr2W9WnUYqhEVfhPxhQouRAm
         0SxmBZ20b1/QFKCSBaLGHGbXq0ViztZOA9Ru87Mi3UD3+T4tstHhikT1t7iOs5ow14fe
         f7C9YQZTWGHLCUgRPavlLREn0DuDad9eT3+wN+dsvdP166Qz3BfNzfGsNjE8PjrJ91rS
         xOSg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@cfcl.com header.s=google header.b=Wmx5iEHI;
       arc=pass (i=1 spf=pass spfdomain=cfcl.com dkim=pass dkdomain=cfcl.com);
       spf=pass (google.com: domain of rdm@cfcl.com designates 209.85.216.50 as permitted sender) smtp.mailfrom=rdm@cfcl.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 6a1803df08f44-8942e5c2ae0si115855416d6.55.2026.01.19.12.57.49
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 12:57:49 -0800 (PST)
Received-SPF: pass (google.com: domain of rdm@cfcl.com designates 209.85.216.50 as permitted sender) client-ip=209.85.216.50;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-652-I7uZMutlM9GyFqAZbsElBQ-1; Mon,
 19 Jan 2026 15:57:48 -0500
X-MC-Unique: I7uZMutlM9GyFqAZbsElBQ-1
X-Mimecast-MFC-AGG-ID: I7uZMutlM9GyFqAZbsElBQ_1768856267
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 74E4518003FC
	for <blinux-list@gapps.redhat.com>; Mon, 19 Jan 2026 20:57:47 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 705F319560A7; Mon, 19 Jan 2026 20:57:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6CFE019560A2
	for <blinux-list@redhat.com>; Mon, 19 Jan 2026 20:57:47 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C8FE71956095
	for <blinux-list@redhat.com>; Mon, 19 Jan 2026 20:57:46 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1768856266;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=JDWEv6NJjI2S2dlS6JrFOkEbIP9lvTmHL/9nEKdO+Sg=;
	b=nEWbW1x2xhS+ss5LqW9e3yLAPbjcqGo4DR5mhlQV2cCXo7bw7QU4OaJYvtJ0/z6dEYxrL9
	ehEOx89a2wA8RjVTQTGR+1n/uY3lb7Yag3vKU55l34S4edBXi+SdowMPoKAnL099F0yhIX
	UaOLCgL2UEymDUScOhapqimewt5crFojS3rVI9WP2ylY/mW2Rlwn1wE5qP0uaWUIFt2lo8
	YBTM5yosKZqnN/xPha+jiyhjR01JaOGEecxMpvu16Gu5MHF+bLtKI4wfmjz/kjCAYN1vwX
	tJQCvp3yqgVGZ0AFoNg8c1YzZgGDX0IKQRLHPuBRgY5I/3vu4/HCJQ075iHgCQ==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1768856266; a=rsa-sha256;
	cv=none;
	b=EM4h8slHE4/Gaxp7ZWvTig6ieTE8xM5YAUUiLCdomJ07dHYWQJBUPrTTUbKfGmQ8SP9Qy5
	KaIPyRQhDVzh5fVABvOc2XkTij+jKAyFcIxGE3VU4ocu1mLAvF3s1kGsVNtBDLCWHz3S3y
	PqrlMpJf055SpiwJwZrP3e2lLI1sXUIXCdTO0h+ge1/Q6Bxp4EAKleOLAUSryanXYyaKt5
	AtTvuRkmznhymshASpGxV6o2mDADZfuW3EhNbtgb11vclbmOeXW+UGKyciAHP4/Ky4tJ9x
	pFP70/esTYa7K9MpXwF57hhQthujsVlUu5lgpojlG8vMyBqfKEQpiXBKH+cvwg==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=cfcl.com header.s=google header.b=Wmx5iEHI;
	dmarc=none;
	spf=pass (relay.mimecast.com: domain of rdm@cfcl.com designates 209.85.216.50 as permitted sender) smtp.mailfrom=rdm@cfcl.com
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
 [209.85.216.50]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-62-2p4rTeBtPdiJl25fUkMs8w-1; Mon, 19 Jan 2026 15:57:44 -0500
X-MC-Unique: 2p4rTeBtPdiJl25fUkMs8w-1
X-Mimecast-MFC-AGG-ID: 2p4rTeBtPdiJl25fUkMs8w_1768856263
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-34c24f4dfb7so2415379a91.0
        for <blinux-list@redhat.com>; Mon, 19 Jan 2026 12:57:43 -0800 (PST)
X-Gm-Gg: AZuq6aKK8TRwAhDJrvSKhxEQ8U5guaAO6bjEgDSgZv90NcoQsaWXicpYi/7DjiaEu0B
	7opncZ9tLDWexrI5FoggrJ4RGSVLts2LjlDvO0G2kg/qDTWc3UOwcxpMo6z6POebNj1gXKBAANQ
	o+g+xGTFz1rBLJf4bTSHgm2SCyDWt4/+PIkAgoHY7fipVT3C6/S6GkLFIahEi/Vu3bOqcq0oUz/
	+LHnUKO3wRMjmyKVRUBwms/e//jeMN4XD09sRzHnGKu/pdXopLHm8Bs5XsTQdCaLypJ6oEH0SKM
	okdawfND98uevg80f945BZX/QejM/CNcW1Ntofscn+yDVMR8V/iPIjf9mNoG19kYBgRMAoM0RBH
	tIS4Q+ZA+Ggvya+NspopCkk3SdDR10MUIdG6wmEz4u04qogIp4Z57xOOFXT4DpOYx0yMa+tEt3w
	CWE/sfi/YGotIXjztA
X-Received: by 2002:a17:90b:3ecc:b0:341:2141:df76 with SMTP id 98e67ed59e1d1-35273178839mr9367820a91.13.1768856262742;
        Mon, 19 Jan 2026 12:57:42 -0800 (PST)
Received: from smtpclient.apple ([50.123.68.111])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-352678ef77fsm12301929a91.17.2026.01.19.12.57.41
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Jan 2026 12:57:41 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.8\))
Subject: Re: Fillable pdf forms
From: Rich Morin <rdm@cfcl.com>
In-Reply-To: <db3057b0-521a-2285-e138-c407a5ef6072@gmail.com>
Date: Mon, 19 Jan 2026 12:57:39 -0800
Cc: Blinux list <blinux-list@redhat.com>
Message-Id: <5BAA6BA9-0974-4683-9308-D9C3489380C3@cfcl.com>
References: <db3057b0-521a-2285-e138-c407a5ef6072@gmail.com>
To: kd7cyu@gmail.com
X-Mimecast-Spam-Score: -3
X-Mimecast-MFC-PROC-ID: qvL9breXdpxaigfanyvPJlqJXaj48ZeSr0hMxL-W_6Q_1768856263
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Original-Sender: rdm@cfcl.com
X-Original-Authentication-Results: mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@cfcl.com header.s=google header.b=Wmx5iEHI;
       arc=pass (i=1 spf=pass spfdomain=cfcl.com dkim=pass dkdomain=cfcl.com);
       spf=pass (google.com: domain of rdm@cfcl.com designates 209.85.216.50
 as permitted sender) smtp.mailfrom=rdm@cfcl.com
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

> On Jan 19, 2026, at 09:44, Tom Masterson <kd7cyu@gmail.com> wrote:
>=20
> Is there an accessible way in linux to fill out these fillable pdf forms =
so many people are fond of?

(CCing the list, because I think this may be of general interest.)

I think there might be an agentic AI solution to this (if not now, then soo=
n).  Meanwhile, I asked the Goog:

Q: Is there a text-based web front end that would let a blind person fill i=
n an online PDF form?

A: Yes, for blind users to fill online PDF forms,  the key isn't a separate=
 "text-based web front end," but rather accessible PDF design (using proper=
 tagging and structure in Adobe Acrobat/HTML alternatives) that works seaml=
essly with their existing screen readers (like JAWS, NVDA) and sometimes sp=
ecialized tools like WebbIE, which reads web pages and forms in text-only m=
ode, allowing screen readers to interpret form fields effectively.=20

How it Works for Blind Users:

	=E2=80=A2 Screen Readers: A screen reader (like JAWS, NVDA) reads the acce=
ssible PDF aloud, announcing form fields and labels.

	=E2=80=A2 WebbIE (Optional): For web-based forms (not always PDFs), tools =
like WebbIE convert pages to simple text, making them easier for screen rea=
ders to navigate and fill forms.

	=E2=80=A2 Accessibility Tags: The PDF itself needs proper "tags" (metadata=
) that tell the screen reader what each field is (e.g., "Name field," "Addr=
ess text box"), ensuring correct input.

What Makes a PDF Form Accessible:

	=E2=80=A2 Proper Tagging: Form fields must be correctly tagged and have de=
scriptive titles/tooltips.

	=E2=80=A2 Logical Reading Order: The order in which a screen reader reads =
fields (tab order) must match the visual flow.

	=E2=80=A2 HTML Conversion (Ideal): Converting PDFs to HTML is often the be=
st solution, as HTML is inherently more accessible and flexible for assisti=
ve technologies.

Tools & Solutions:

	=E2=80=A2 Adobe Acrobat Pro: Used to create and fix PDF accessibility (tag=
ging).

	=E2=80=A2 PAVE: A web tool from Perkins School for the Blind to make PDFs =
accessible.

	=E2=80=A2 Helperbird: An all-in-one accessibility tool that helps with web=
 pages and PDFs.

	=E2=80=A2 WebbIE: A text-only browser that works with screen readers for w=
eb browsing and forms.=20

So, the "front end" is often the screen reader and browser working with an =
accessible PDF, rather than a separate interface.=20

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

