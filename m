Return-Path: <blinux-list+bncBCVPTHE7K4IJLNPQXEDBUBE5Z323A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id F3CC59D1F77
	for <lists+blinux-list@lfdr.de>; Tue, 19 Nov 2024 05:56:54 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-460bfa9ff3dsf75193861cf.1
        for <lists+blinux-list@lfdr.de>; Mon, 18 Nov 2024 20:56:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1731992214; cv=pass;
        d=google.com; s=arc-20240605;
        b=W1tR98kBGhyUjMFrBWkz76zJessiY9h9dkUx52ACM1scJOrE0vLxULPl/jOe3I0dm7
         ziKepTYRZyFYYAy5CAHWFUriT1Sqbse21NatDjoVhFt4itY57ym6gWqRsz3mGp/0KLAk
         fd9rGWjfEz8HVYiZf0ZoXRlhqrM5Tg87xSZG6/zh0jIL+pQHAoz5ta9td6xZYd2MMAXa
         9ZtX5y2rLnI5dzATW0sWHAqqyzfLV2UtZF76uwbrhoDtS6iV2uMnJ0eVK8XROGrkAQww
         rLVd4v4UVi7Csp58Cu/GRGfEORJJa/7rBdtbvJrAcTfszbeQ+eyjLXonOONenXXIy9Xb
         Oy9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=OKBr8o0dJIYcHZP85vx9oV2ZEilyHGPnULaPPlvkDWs=;
        fh=wGwVamO6gUXl1IpD8Ha49spUHPzi9Wze0Q648zKl9VU=;
        b=hpKh5/Knh6xQV7U7Rfaj3FwfG1rTrIfPUNQNeL1HCoqf4cNlFGc6Dyc3Es6xuAbBzF
         wI9BpNBDGnkhFv0PWX55DM5JtIRI//GIs4fJjyDMlXpB3BMgrsr3CEEd8hNxBGAvNIWM
         Mk+czh3sFHOlV1pk/PNlyqmlsKLbT6Kg9btTFwAHy/xGRCRU/uXTeegeabQa+FB5gFEH
         B7hZLo2yb+66sY/zgED11TFvufeiBDOuHcsM7uLru3gJlcLvL/UvdhOPi7KWYIW91CoY
         UjJqyY2vcdRKn26+wf57oAQBCuO+DH0W/lCHm066jZB44uPsPWkcJ7lgfZVXMoHgyXL6
         k1yw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731992214; x=1732597014;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OKBr8o0dJIYcHZP85vx9oV2ZEilyHGPnULaPPlvkDWs=;
        b=BMW7b0mukGVOH6koB/sX2WdbiQ2pbnabW6ZrpHckoYC7XSNOd4Irpq19H4A5WLKyNN
         PPexWhAmqiXwhZaZDUBqkN9HYl6wyJxhNwc4BKzxO5qdJ7Je+jaUDfFlB8OoOUXqwrD+
         UE7BNSmXV098ZWmPLfGjvFt2QoWl6vsCy4KBiUSUJk32jnvOiaVBMlpro8sWU0qEOErD
         jEhUawI6F52o+z7ciZxJiZBZZ96VAs2EX6z6W8jlvBpQ3HBc7u1z2tNONEpfrg2eSxgQ
         7rAV0wlnJfth9J8lR5gAVXFIIDswHrlwn9mHOuHTkvCH0DL1Oz+8a1Pla+ItBHnkLjgc
         8xIg==
X-Forwarded-Encrypted: i=2; AJvYcCWU/Izuz3F5tYstxjOsyFUDiMjQEpYxARSR9XYJpXyxykJW/7GtWAyqGYjlfpJeuTdp/ZeacA==@lfdr.de
X-Gm-Message-State: AOJu0YwbxOWj5jv48/UDyidQSe9Sdb7XLR0ijHsM9VW5ukwLZlw6RKYn
	Qh1yNFxdQxehKiCpan3boPq3lFeg4Ppn5PiyDC9UlL5oSalizjMJ7x3Hd2S6INQ=
X-Google-Smtp-Source: AGHT+IGWXsQQoIHGoNK3SxZqmbhVeF3v3lAMAM8I1Qggq6oMDg1pe+GXySBCtfkSIQrtUKcOb61Nzw==
X-Received: by 2002:ac8:5a03:0:b0:460:e593:41fc with SMTP id d75a77b69052e-46363ea10c4mr245409121cf.37.1731992213783;
        Mon, 18 Nov 2024 20:56:53 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:5445:b0:463:589b:e054 with SMTP id
 d75a77b69052e-463589be37bls40102181cf.2.-pod-prod-01-us; Mon, 18 Nov 2024
 20:56:52 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVcPQI8qPE8M7Ez5IPXxIoTaJrleirswcO0Lt1kxdqE0yoKTRkNwNBCBGF7QYU/CPnjT/HmgwvK38b3+Q==@gapps.redhat.com
X-Received: by 2002:ac8:5d55:0:b0:458:318b:556b with SMTP id d75a77b69052e-46363ea1095mr167495741cf.35.1731992212506;
        Mon, 18 Nov 2024 20:56:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1731992212; cv=none;
        d=google.com; s=arc-20240605;
        b=QQ51rhicd4z4zdXcfrmkiSw1nlHIQuxVnePfi9JpjqmSL8/CL/eN4z/uHp1mYFcJ6A
         2EVx7y1Two/nTS6OWpdZ0YFebTFA5swRwCz+744FXTyFGxcwVI8QCK+5ehbv+lO4QM1H
         /vvpgo0B4u4HTMDQnKgkKoA78hkYT0nMRLsp5fyc4+pIPWpA3/UbEbBf97RZUqwgfqxD
         C7///yS5cDUL5Hr42R8NJkN0dOz//H6/vNNPJSpI2m9DBbonFjVDLnUvvQBFEtZRKRF8
         ZzRsDD1BGyQCC2zjnNOv3uu18EhxfzEoJ+KYGJ97RQ9FEC3WPP1qqd2QtAn6VkJacHfb
         PkaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=OKBr8o0dJIYcHZP85vx9oV2ZEilyHGPnULaPPlvkDWs=;
        fh=fQue1LVswyroBUi493FuNRGs2h1etDPzgwP/d0K1aSw=;
        b=lin3iTBERkofqFQoiUNLCthMkZIl/GCpx4xLkrHeAKuikdFcp2nvip8T+NnbhGG9gn
         1AuulPpX85SiSVv0vsqOpySDZUNSJrXkiQGDyiAVeRpBDFIEhUfkSJaba/iEFHHOiaTa
         rVvPaYzywVc04PopEOIXX0q7JLxC5U2KV+C0PbkLNqNhtlfLcCKaQYq7Aix+uxLAEv/f
         nOHS+rYIS+bLgiNUUMkguilDUaGOzmc5fgL3dJ13qNiFNMEtGMXAEmRQbkZwh2no6UC3
         I7zKP8EYxu6tIB2/isZyGzuPZVNtu/Hjl3jSdIQ+hx8ip42Tkcg8mts+unluX0GLEzgp
         XrNA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-46392c1e816si13471311cf.329.2024.11.18.20.56.52
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2024 20:56:52 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-652-3O9haf9_MVuadOOqhPwnNQ-1; Mon,
 18 Nov 2024 23:56:50 -0500
X-MC-Unique: 3O9haf9_MVuadOOqhPwnNQ-1
X-Mimecast-MFC-AGG-ID: 3O9haf9_MVuadOOqhPwnNQ
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1CF801956096
	for <blinux-list@gapps.redhat.com>; Tue, 19 Nov 2024 04:56:50 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 183541955F3C; Tue, 19 Nov 2024 04:56:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 15DE51956054
	for <blinux-list@redhat.com>; Tue, 19 Nov 2024 04:56:49 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 696F219560B0
	for <blinux-list@redhat.com>; Tue, 19 Nov 2024 04:56:49 +0000 (UTC)
Received: from atlas.bondproducts.com (atlas.bondproducts.com [23.24.6.165])
 by relay.mimecast.com with ESMTP id us-mta-654-RGtqcm1eNlK0nnDpqG1-dQ-1;
 Mon, 18 Nov 2024 23:56:46 -0500
X-MC-Unique: RGtqcm1eNlK0nnDpqG1-dQ-1
X-Mimecast-MFC-AGG-ID: RGtqcm1eNlK0nnDpqG1-dQ
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 3A30C40508;
	Mon, 18 Nov 2024 23:56:46 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 024FA1001C5; Mon, 18 Nov 2024 23:56:45 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 00394100095;
	Mon, 18 Nov 2024 23:56:45 -0500 (EST)
Date: Mon, 18 Nov 2024 23:56:45 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Chime Hart <chime@hubert-humphrey.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Piper as an option in  Linux distributions?
In-Reply-To: <1734eadc-f27b-2f63-67b8-1a5aab1170cd@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2411182352010.398469@users.shellworld.net>
References: <Pine.LNX.4.64.2411181752460.395171@users.shellworld.net>
 <1734eadc-f27b-2f63-67b8-1a5aab1170cd@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: dxApkvP80dogRJiccsaCQwbo4_lZCto-h-oSmDAvy7k_1731992206
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: zK75zVa34pWedKak5skMw9CAEk6HBb0euPGSqYJSZBA_1731992210
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

Hi Chime,
I am about to illustrate how little I  understand about Linux smiley face.
Exactly why would a voice be too large for use?
In fact, let me go back and actually  take note of how this voice was 
created for Dos, using an open source dos screen reader called provox 
which I  may have just misspelled.
Fully realizing many factors might impact this when in another 
environment,t he speech is profoundly good.  I would personally need 
the kind of screen reader  with actual configuration options, changing 
pitch for example, those sorts of things.
Thanks Chime,
Karen



On Mon, 18 Nov 2024, Chime Hart wrote:

> Hi Karen: Well, I think it was Storm of Fenrir who told my Linux 
> expert-and-myself about it. However, the best quality voice was somehow too 
> large, so we chose another one. Also, I traded mail with Mike who seems to 
> maintain Piper tts, he may not be as aware about screen-readers as we are. 
> So, unless I am wrong, we might need drivers for Speakup. I would love to try 
> it. Hopefully you will receive many more comments-and-suggestions. Thanks for 
> bringing this up
> Chime
>
>

