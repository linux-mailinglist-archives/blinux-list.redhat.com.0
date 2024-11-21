Return-Path: <blinux-list+bncBC3NDNGRUAMRBU6C7K4QMGQE2Y7X26A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 030879D45FC
	for <lists+blinux-list@lfdr.de>; Thu, 21 Nov 2024 03:56:31 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6d42001c9basf30949006d6.1
        for <lists+blinux-list@lfdr.de>; Wed, 20 Nov 2024 18:56:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1732157780; cv=pass;
        d=google.com; s=arc-20240605;
        b=FfgZWKoaQKv0wy9eNLU6RUly0vxkpERjAMXWXQv75M+PdDcrVPOhKCi5aT26p+iDaF
         MW2xkO1njABdeAB4fSxnTlRiYazUqrbR1UG+3rKCt8qpDP0dKKv+H/WFnz1RyU5thJoU
         gF/XFAQFe8LlUxP3qNFkCT1emNebLdh5ACfu+j9kXlJ1X/vtd0+tBOoYP2h0l99dlkz4
         CrbUVtxbxvlGRbW+7FWHnA/Warw3cq0q5S23umUcUZtI5vei0QTInqndddfKiMppHzgm
         8gC233uOQKN7Da5U79gUnk3721ocDcgkSANDwR/NMmlwaKOC4Py1hHPrmQzB91RgF/+a
         sDpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=QtYlFAhLEv0v+gK0f+JQeuhPaecQ/lhloVEeM/5HoPA=;
        fh=p0cspjjWi3kFMWoOexTvGBhossGdIO+Ck/7KqkwM4CM=;
        b=h5A0TFORHLXQFqEgd5/4i1cgLKp3iDu+5Hua0WxVVVgUnh0dxYK6VF7c9KBMn0t1KC
         hv8fQYE6plf3L5AmP/GsQXFMLRfL8Z6WUhSkPpbNGIvmQznJmX9Gsp65ruNZ65uQsgYI
         URfc+Zf4dcJjR/gc85rtPy2nCXNKMn2IfE5H95muvDJUjUcjpvV6pIHxjhIlodZOLDJ0
         s2pHEg36q8j4QhOc71ndc1RklqSWdwcZOOWbAsrbkRBGL5M6UjUnKPNzqg+J1wET3bZB
         j2vPrcuWpFFFrnamgunJdTA2o3PyZaTPFmLjHqX7zQzFKhgayMYsTBkVjMZAPUh6jpvT
         afYA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.157 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732157780; x=1732762580;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QtYlFAhLEv0v+gK0f+JQeuhPaecQ/lhloVEeM/5HoPA=;
        b=G9f8gmXr9vLWBq6bXWksm0hie/9WiXx8LMNUdz47HXYmCYV675q1XRMm/SIqg++xTc
         zx2Pg1J077iD3+EYTDPYCLUlqVSHC5DwDjOVliJDkHwRpIUssmaTrxuuTO+gUFnFRMhB
         BHl1LSOvumZuMmfP9bR7t4Rq7w8Yi4wyzsjZf9cCBjuNz6S4Q/FrmHO23qtDcJu0B4jf
         XsOrAxRvRmNaHjavwBfn7ohT87cxhPdszeJIlVfysfUF26jCfdKGKn89vXP6rQLtrCqX
         wjLGB1nUMJodGkgK9IskQ632978AEUjk4TFCSV0evCJDojlnZ3c/nnvQxKn3j5LjVrq9
         fPlA==
X-Forwarded-Encrypted: i=2; AJvYcCUMixxlhc8Woz1Hq1Ves3wT6ieV5pciWFfouLCuTkKIgXihk5MhyvoWaG9QVniC2DGtyQxKbw==@lfdr.de
X-Gm-Message-State: AOJu0Yz7ch3BScIHhZJmO5J2E3PI+zlGN5GQMROcJurPI83G+FLyJ8i7
	k43fqJb59L3c9G6Wypf8LsXcawzRMW6VtwzMf/kHEVteOEW8iCTKROpNG1hfuB8=
X-Google-Smtp-Source: AGHT+IHP4uLin+4sUot4fGvdU/PwC7cmpc/hDxGxW6CakuyiGg9OUTDgXxPRyOaUUB1j2/G1d2vUtg==
X-Received: by 2002:ad4:4ea2:0:b0:6d4:124b:a48c with SMTP id 6a1803df08f44-6d4423e176fmr35951976d6.4.1732157779664;
        Wed, 20 Nov 2024 18:56:19 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:5093:b0:6d4:e40:5156 with SMTP id
 6a1803df08f44-6d44234c907ls8187236d6.1.-pod-prod-00-us; Wed, 20 Nov 2024
 18:56:18 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWm6gZi0Ts9nXkM5TAak5M0UvFm0TPqRD5JUTnnST6/d7tHhFsTzgCtIgoNf+AKvlN+sKmwFgi1Ar+JJw==@gapps.redhat.com
X-Received: by 2002:a05:6214:1304:b0:6cb:ed27:145c with SMTP id 6a1803df08f44-6d442453505mr28954636d6.19.1732157778575;
        Wed, 20 Nov 2024 18:56:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1732157778; cv=none;
        d=google.com; s=arc-20240605;
        b=WpfIazlk3+Y1FqzhAWp7CWFqV5jEagvpJxdagw/+OqRcHAVJrOg6FL8gwmS8eq3UFd
         HVzy+YLmCLr3y9W12T7/eE60vwOJcZAd6Zx5sZI8vNO5OFYEwLzTgAxxju1BX91ty7aj
         yamMmOazzf0cCxN/M2AIsT0FDSjw2fqtsShihzCL43jVdrkg4rzVV1TM6s1HJNgQPcoE
         0If38TY2/2/lyIfkL69eSjUdAsMqRInecytLpe15955HdbHk1p7WHt6A5MQ11hlJRR5O
         WigmkBPVwfMg3NRRW0bEcvp2nIemYTWANTgCI7W+4nv/3bJSePDdEa5ZcoY/XvBgW2cO
         ZA0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=ZU/vT6xAgzEV5VpGRDjt95fABCO0JgK+Dwtfh/gwlPw=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=k1Lj8KtSm0rsSguyarII6VeSbeQvTMhflf5D0eZND/aKb5keJVQb83QLT8Xy8Sm9bh
         yzTPGgDze9kJcvQHHfvmyZj/a+IN6HM0LOs9P5Kdcpy/pqbaH4lPT+L0gJ+iFoWvRjMY
         vueX/RA3mIiTdLHSlagVM00CDWBCDve+iTIY10JEhcr5PP9ykn7AVpaL2QyneYrZRLLp
         Xmn85B9uEpZQ+1ltxrgBOit8fxYaeGtnS5sz1YsqfeDqLN+Mpi1lPa4hgdX6u7n2TCZV
         +5Ec7PSZChMLyxPGlrGyDLVVHDeNKAZTaAYg4bAOCuM661H2fM3oCmO1NSjBRPFwk6qG
         veWw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.157 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6d438137d4bsi34239716d6.349.2024.11.20.18.56.18
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Nov 2024 18:56:18 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.157 as permitted sender) client-ip=202.12.124.157;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-378-VCyXF19PMRaLZIB9A6N6Sg-1; Wed,
 20 Nov 2024 21:56:17 -0500
X-MC-Unique: VCyXF19PMRaLZIB9A6N6Sg-1
X-Mimecast-MFC-AGG-ID: VCyXF19PMRaLZIB9A6N6Sg
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3623519560AD
	for <blinux-list@gapps.redhat.com>; Thu, 21 Nov 2024 02:56:16 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 30A6E195607C; Thu, 21 Nov 2024 02:56:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2DD651956086
	for <blinux-list@redhat.com>; Thu, 21 Nov 2024 02:56:15 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7EF701955F69
	for <blinux-list@redhat.com>; Thu, 21 Nov 2024 02:56:15 +0000 (UTC)
Received: from fhigh-b6-smtp.messagingengine.com
 (fhigh-b6-smtp.messagingengine.com [202.12.124.157]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-482-T_JsDLN4Ntakls_TWdXx5Q-1; Wed, 20 Nov 2024 21:56:13 -0500
X-MC-Unique: T_JsDLN4Ntakls_TWdXx5Q-1
X-Mimecast-MFC-AGG-ID: T_JsDLN4Ntakls_TWdXx5Q
Received: from phl-compute-06.internal (phl-compute-06.phl.internal [10.202.2.46])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 3FC862540116;
	Wed, 20 Nov 2024 21:48:08 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-06.internal (MEProxy); Wed, 20 Nov 2024 21:48:08 -0500
X-ME-Sender: <xms:Z58-Zwgr-cRovpAPUtFqDXDoA8kzW4ivYs8IZER4GwnYnlTq8Jiikg>
    <xme:Z58-Z5CeFp5rWkfQrZgbaiGtqBT8rt6Xf6JFv8uZxajUg2KH9x8ncWeuMoxKJpufW
    Pgfe9YtpYneQrpdKFs>
X-ME-Received: <xmr:Z58-Z4E7N6ZGGoWRdAgMiYRFI1mvsF9Oe022Y-H9Od3iQcFCGpvYs4eK6LxvSiB29dwExNepPKMGwQLtOvwx6qoPOgm3MDGHtmQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrfeehgdehtdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdpuffr
    tefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnth
    hsucdlqddutddtmdenucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfh
    rhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrh
    gvhidrtghomheqnecuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdek
    kedvteeuveeufeeffffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrg
    hrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidr
    tghomhdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoh
    epkhhlvgifvghllhgvnhesshhhvghllhifohhrlhgurdhnvghtpdhrtghpthhtohepsghl
    ihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:Z58-ZxSoyWLxKFmWx0Xb_pLKmB6zl9-JH6V242ae86TxCtFyipOqOQ>
    <xmx:Z58-Z9xMksMVTxp6a44zlF6Zq1Du8DIbAEVi0LPxXaL5NhDk661cFQ>
    <xmx:Z58-Z_79Dtp6Fs7J5D-6FyPaaAF1Y13jgTlfUue7kkL27hePwCQOoQ>
    <xmx:Z58-Z6zqWS2L42mWCBRlvYoerC_v7sSC21IUGyu0MOpObepDa3_S5w>
    <xmx:aJ8-Z4-ZL5ANlQJjWLbeJB3sep1NGnqDT386MEVg7hhlJi-hnkNeJmef>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 20 Nov 2024 21:48:07 -0500 (EST)
Date: Wed, 20 Nov 2024 18:48:05 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Karen Lewellen <klewellen@shellworld.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: A question  about accessible branded distros?
In-Reply-To: <Pine.LNX.4.64.2411202131050.435046@users.shellworld.net>
Message-ID: <e6df03a2-e352-458a-4e3e-dca663175232@hubert-humphrey.com>
References: <Pine.LNX.4.64.2411202131050.435046@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: U-zLQyvaqU4O7UwQbK64hyGgwX1_AH5TsFnXd36TgNk_1732157772
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: yTUW-elFkNYRVOA-MNvTxltbxBl85h8-9WxY9FtgQt0_1732157776
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 202.12.124.157 as permitted
 sender) smtp.mailfrom=chime@hubert-humphrey.com
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

Well, Karen-and-All, after you begin a graphical session, at least here in 
Debian, I can hit an alt+f12 as an example, if I ran graphical on console 12, I 
can then type an alt+f1 or any other console to resume working in console. I 
have 24 consoles, but I suppose you can have more? Certainly in graphical you 
can probably type an alt+tab to change windows.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

