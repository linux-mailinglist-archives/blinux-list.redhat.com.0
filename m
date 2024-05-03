Return-Path: <blinux-list+bncBC3NDNGRUAMRBFF32OYQMGQEKMPO27Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4118BACD1
	for <lists+blinux-list@lfdr.de>; Fri,  3 May 2024 14:50:29 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6a113df8f57sf5655366d6.2
        for <lists+blinux-list@lfdr.de>; Fri, 03 May 2024 05:50:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714740628; cv=pass;
        d=google.com; s=arc-20160816;
        b=lThkWezfn7Wu2WRa7cOOEsfWYPxTe7fSg1NNxspg3niE2xkVLpWKQKncEnRu4ZxcKT
         +ZC9G1rgrlnKl4VwRtwnE4Mh18q8dHePBZ+s0Ivqbgh11FyGh56Vs/zwFLW9n3f7q3wP
         wwYU1p4FyPYIVnCM5+Y9sIgiKGGyV0ZcMclKDyh7kWlvmz7JQfl79SjiTps7i7787z/D
         LUxhohLe618+8OcpAX0jAPaPwb/BqsGcBEB7K2izdJFKDWbITHw3qpUL5zESWiPtis06
         aey+eYAmBwc4Pn7Wo+xMiKqk19BVhjaCvyPZEA8EUeqUfeh12M3jxuqNcN4vgx+oMHZ6
         aI/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=g806tSY2lnjFbZ9UCYZbmbYUP0ndu1qY1G72XtWNHvI=;
        fh=Hb1j0NbjOKn/Htu9R9B6mjd5P6/s2VhY7uPd989GGE0=;
        b=HPjDBb6cI4fSm4hWo20BQgdW/42aVJ3xanZeDLNoHygHRz7WVtTpguIfyAD35ZFxQn
         dfMHnKzma+qGWxOUxxfPZMFh7Tpur6uTqtki/FblFDv9DqOssnNO3A8y7K5W5AwVKvf0
         udMcrCjiZYLxXl/fXiSWhB5dMY8c4nDOXWvd8KyDzBHhV3nQ4n10bYb2rLkYi9w97ywg
         c1ZADXBcb6/7SgnnYShBD/XYXiuFdJCN3OcOpjTe+hhEkRjdKNPA889j71rOf2t8ntkW
         PMzGYI0gdDuvW45oIvTlsOlA7LiIxnDFZp0j88coDEy43dtag8n5jCDAqqX4igMewPa2
         nwRA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.151 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714740628; x=1715345428;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g806tSY2lnjFbZ9UCYZbmbYUP0ndu1qY1G72XtWNHvI=;
        b=QZuMF/84o+8WBY5w89QTuLDYZZLwRhbBXuVNVJnLu0IQeko2ZntzICoUtacPAnmjKD
         XaRAVsCaAMHnCwCgyDbEaLRBmieAejORg8sP6S1mGxQLrGdYkLHn4Mt7LT6lF/l1ouof
         aUYmwQALGR+ay7xJdhKSA/c7lCRpB+tPiMZ2kTa4JjZfUI5AYyKNvrrViFTVjypJyOGQ
         bgoHykTq0rGzZv5f6B/xdc7HgQngB9uUvhuLwJmwpMT0ohqjFWerB4rVQx/bdVdyoP7J
         pjlOeV8V30JXXM8wXjh7DqFCdVwD60n/GZZREavQRU9Lr8ZVEXtLtee+vFGKBGM6YKlw
         6hVw==
X-Forwarded-Encrypted: i=2; AJvYcCXGd3CET8hH2KlKRFTtq3vDRx6APxLB5BC7/3/6BYePzbN2QY5U6PMBWC53uFzZJgj4MtXoC2l1AYmgPpZWR3GoJ99U9T9GJue3
X-Gm-Message-State: AOJu0YwEdoLUQVWcf3isGfKRC1JlyyHHK6eg0xil/pcFGX8CuhytDumF
	GGpoXK7KsT/eyelqbokDV2wyQRmvAAZO7UrZhv1JsU7m36GdBxD7VjgSwb43TN8=
X-Google-Smtp-Source: AGHT+IEkMca9tsdUUIzQ27h1gzOxyj3bIiKshl9vOD6Wtipfku2DgycZdLbGY+jZEP7V3SYmU7FT1Q==
X-Received: by 2002:a05:6214:5193:b0:6a0:9770:39c2 with SMTP id kl19-20020a056214519300b006a0977039c2mr2225916qvb.54.1714740628365;
        Fri, 03 May 2024 05:50:28 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:402:b0:6a0:ed33:457e with SMTP id
 6a1803df08f44-6a0fedd51b8ls25013436d6.0.-pod-prod-01-us; Fri, 03 May 2024
 05:50:27 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUt2/7hkxGiN7DarV62B+5RAwlrAqc3bFRfLe+3foeimCcnKGHasHccb/Nfq8+xBXjx1h2oJuNCNHltbj2VazJ0A8Cs3cxAWdDPqXMr
X-Received: by 2002:a05:6214:130e:b0:6a0:cb40:128a with SMTP id pn14-20020a056214130e00b006a0cb40128amr2686294qvb.57.1714740627686;
        Fri, 03 May 2024 05:50:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714740627; cv=none;
        d=google.com; s=arc-20160816;
        b=Yjn07z6WwxiLSo1Kj/p014V1ygY4QFmZPW98fda41N4QfkgL36Xo+AOqIX+A2dvekD
         IC7I5Ij+IAJd2q0kHsBcPz2IwrAz2LvA14fOwChixpP71hs/DBdwNAB4E6KV1iKhLzl9
         NA7QmeI8Hc0yw4nRACzEUpH2UpcTatjmRmQv1IWylYr//ThIS6kxLA80wW2SmQZyM6gV
         FMeGkR9lgHzcTkdnzChtXiqB8wSy+dBihfzDObIrfOCMeqvRWnnb/LwmEx2QXonuqOm9
         LODWo9gEJmJgweJ1TJ9sC6h8VJ9XtXjv/IXHNS+POOxsjZWPmKkvYW9sCZMLliJ+NSVb
         e8vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=tkPNzDeC+wzQI5L6cqI0Gs+6T/2Hcul1YVC27nSJWjE=;
        fh=1sdodgCGSsQjv9kLBrUCbjCSIqmrEilVqSNm7DuVNSs=;
        b=fnP1HC4DsYgTTR/nEgR51nZOnOpelSc/Aw/1cdf+RnSB2+K7utnC/EyFdAvyyEIrO6
         hNguNR16QdoOah2+eIEw/DoZk7evqzdZWyZIgtcYT+LmQmh4aPt2xas8zwuSEFBs9AoO
         EblbYYzCxmoCkrY1Ud0CDGdP5hpPviJ3k0UjAH4XWkVGAVpx8axqcPW3jiraIbifOS7H
         5XbquMtX8tpPY0OecscOd0JLGjKjzgirXFHOutNdXKDur8menp8nYTqqsHvOQJIAimGz
         ddBC5ToqNN5UkD6y2jkoG68JhNjZO09pY0jXsjRHcEdvsP6/8Kr7xXSBmjcW1de+/s2B
         cy1A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.151 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id wa16-20020a05620a4d1000b0078d623428b7si3088384qkn.181.2024.05.03.05.50.27
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 May 2024 05:50:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.151 as permitted sender) client-ip=64.147.123.151;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-287-iL9LqnVuNsCzktWyalB-SA-1; Fri,
 03 May 2024 08:50:26 -0400
X-MC-Unique: iL9LqnVuNsCzktWyalB-SA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1308529AA2CC
	for <blinux-list@gapps.redhat.com>; Fri,  3 May 2024 12:50:26 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 101BDAC68; Fri,  3 May 2024 12:50:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CB93B151EF
	for <blinux-list@redhat.com>; Fri,  3 May 2024 12:50:25 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 79D58886F01
	for <blinux-list@redhat.com>; Fri,  3 May 2024 12:50:25 +0000 (UTC)
Received: from wfout8-smtp.messagingengine.com
 (wfout8-smtp.messagingengine.com [64.147.123.151]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-195-Dg0sPBXzOFG4XxbrYUfoiw-1; Fri, 03 May 2024 08:50:23 -0400
X-MC-Unique: Dg0sPBXzOFG4XxbrYUfoiw-1
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailfout.west.internal (Postfix) with ESMTP id 38FB01C000F1;
	Fri,  3 May 2024 08:50:22 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Fri, 03 May 2024 08:50:22 -0400
X-ME-Sender: <xms:jd00ZubKmT0jTKaU3sUbOw2I_E6pFGhBwACUUb5bS0_3OB8O53AduA>
    <xme:jd00ZhYkxC6f_QTV2x6orh78E8KZTk9Kzan8CxJJP54YOzDZS_YGoOCq13z2PR51B
    iitggqogAEAzttHSg4>
X-ME-Received: <xmr:jd00Zo95l3GvhR1R7zSnR43WdljSLS5W91dM4SwrnfBSDW_-CkjefqniCWztc8uR21oe39U0bU2G1UzaUh_DJrWsa6A2JmHMT30>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddvtddgheeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:jd00ZgqobMuTluxzec03md0cI0Jpolz1eNjH396qvpNQbvbPSLU9ug>
    <xmx:jd00ZppMuA01-tWGvLshA008ebTsWEDqsHc_xq_XPkJWK6TPEq4lrA>
    <xmx:jd00ZuSVKReFGnOK6I7WzBNUEvB0e1NnFT8eri7QrNI_mdx1dsGRqA>
    <xmx:jd00Zpo7LZLL58VtDHAPn_1CDAhXF_3ypPB3wqJVJTDkmA3o99AVdw>
    <xmx:jd00Zg2TYrHt0DPHpgbd8PQYazGgp_8SCry8vVDG2NRwLp6iI8QIV-GC>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 3 May 2024 08:50:20 -0400 (EDT)
Date: Fri, 3 May 2024 05:50:18 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: =?ISO-8859-15?Q?Elias_St=E5hlberg?= <elias.stahlberg@harrastenurkka.fi>
cc: blinux-list@redhat.com
Subject: Re: nvda2 speech and debian install error
In-Reply-To: <126a3a3c-2f91-411b-b72f-74cd586cf7bf@harrastenurkka.fi>
Message-ID: <79c86851-3fe5-0c25-60d5-ffea7bedcdd8@hubert-humphrey.com>
References: <2aafa8d0-f421-42da-9178-fcfbbf5a5a1a@harrastenurkka.fi> <20240503123117.6vhsfjpfuhjgwxno@begin> <126a3a3c-2f91-411b-b72f-74cd586cf7bf@harrastenurkka.fi>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 64.147.123.151 as permitted
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

Well Elias, many times in a similar situation, I run aptitude which I guess 
does a more expansive search. But you would need to install with
sudo apt install aptitude
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

