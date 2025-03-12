Return-Path: <blinux-list+bncBCVPTHE7K4IPLLWEXYDBUBHNKTJLU@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 83460A5D54A
	for <lists+blinux-list@lfdr.de>; Wed, 12 Mar 2025 06:11:19 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e8ffe3998csf96351356d6.2
        for <lists+blinux-list@lfdr.de>; Tue, 11 Mar 2025 22:11:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1741756278; cv=pass;
        d=google.com; s=arc-20240605;
        b=dURH3V1DYibrIBRyBuu7HR8RwzIMgoj1zzEHzjR3HwJS9qltrq7/XLlj06QrxTwPeZ
         r22IIPQmCJFHI5RpSegLsCZV/Dwtl4DBjkNMFq/xWbsL+Inj57rFKy9+Vfx+loC+6U8G
         cBaqZ+By+oeO8OrOUVIL8VB9fNn4R+8wGLD1prZyNg+jiGvJVXar30pKxYBWo6PsRJFN
         uCI8O3v5knb3Qt+q+9UiTLKiDiwIETAMlWfGDmqcCYZEZE/DPuFd1+GKJj5TZt5WCnmi
         Pup7sGsN/I6Ft1sF6kJeZ8FQ/vW62KZwz+HFA5EGxmpTi19inlNiU8XH2PQm6nsGtFWk
         HqHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=LaWyfrlDtTXGqwjbL25ghy7U89p3+IgPnbOC2re+ZEU=;
        fh=TyE1s6rdqjxlcTn3uu2gEBOXGnrtXJQjp1niDH1KFfE=;
        b=dexQ2qVDn4nJiN6JYtDaSxvYVH7sWTvmlzJLbuVIXKzE8wDyRpauQPvumq3p4EJqRf
         K/CpFOJqtZn15n8ObVp4kHBLXUZsM4o5N43OuPdNfvK6zmAn0HYbs1cVb/waX4jtmAnG
         4UCiV5XL4KJxTahnd20W+jcjuSQnzn35lvjm+Nq+6ByqYkdW0v6TGOmJ+ECdD6QlydtA
         x8CB5jjrq7pfOeymDJQvp/rP8NVti6TgueAjv1GNBxZD0fB73UFKU9wAVXGnpnu/hSEg
         s99LwBgkmzmk6ca4X48BU6QUb2VYq0q94sEsCv7yUY9qw7wQzjwgXZPLqCKBgMUhAJE6
         FplQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741756278; x=1742361078;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LaWyfrlDtTXGqwjbL25ghy7U89p3+IgPnbOC2re+ZEU=;
        b=d4Y6qaYUM/vzRvqwsBsa3sz4jmCQPowKf7zUCl/Yk72KV1OpPAojN5RhQBs/iqy+C+
         g2V2gG6sAuH7p4HDPXXcV+SJ5Pn/iVoSokzORG2meQzIX+q7zd5WcDq0fW8rNGPu9hgM
         nOFgEPpeeELQmkUyra0b05u2XzSgFeZeL9jAxUVRMP2yeUGSAb7oyXWItaocsp4UttoO
         8Tc5j9zAjg/2GynZfcqmLJ1l9+eVKOp2Qq0KvLOjKBkHA3EsQqzMHGx+Tdra5p3uPjli
         W0fWGb33DP7I65V3Ky+WQKg3cUO8V6w+IYwgq9s7ym12ytrd0qM9TyruOu1BOqSrmhUL
         ajzA==
X-Forwarded-Encrypted: i=2; AJvYcCXual9ysSCxYy2qyEgY/jdKaxAnrxtvmoZAivRgIvz9zpk5koV2J5gEkzKpcyU0pGivmtG8hA==@lfdr.de
X-Gm-Message-State: AOJu0YyLrHsRrIknsEBVIbLR5JKSV/CQ0mlvQAAg22+NX/wcZNMB7uMy
	0QPJSzCBFq5HoeDx/zeYdAFEgZ7GRBtBHiIifjKzyvTqOJtFOrHjLXWOO78wJRA=
X-Google-Smtp-Source: AGHT+IHhJEocHKkt3xkaRplqazxVf9TFPA36JgDdWyCFdQpISjD1P8jmIEJSskfHm8G4inXTHB8cfQ==
X-Received: by 2002:a05:6214:cc9:b0:6e6:6ba9:9e84 with SMTP id 6a1803df08f44-6e900650d39mr239134166d6.26.1741756278167;
        Tue, 11 Mar 2025 22:11:18 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=Adn5yVE0hvgDdf5ScHirEYrQMxW11Hs48wDqEFQI2E4BQ91XgQ==
Received: by 2002:a0c:fe12:0:b0:6e4:41b5:919e with SMTP id 6a1803df08f44-6e8f4ee60d0ls12555596d6.1.-pod-prod-07-us;
 Tue, 11 Mar 2025 22:11:17 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX5nis3SW7gLjcSYsVYh3If4dy9J+w0OBpA2xDuINpSkL8G3fwAtWw0yAcWS/BNAgsvywKNFbl2Dw5/Yw==@gapps.redhat.com
X-Received: by 2002:a05:6214:27ed:b0:6e8:7bc8:a850 with SMTP id 6a1803df08f44-6e9004ea6f1mr303621616d6.0.1741756276966;
        Tue, 11 Mar 2025 22:11:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1741756276; cv=none;
        d=google.com; s=arc-20240605;
        b=f+RJm9nlphw2e5StIlBX0AnGlTPuA4zZEmSkd4jwv9KeNstHbSTRXgWI06Nt0hPQLD
         8SKBlBdJE24MkVCkItaQR7x1CZ25MEISXew4HoiVv1aoUYnzs2Iehjrf5byXv96qppqq
         oyjgy84TJ2hOLebCnojfKA7DAY967Cj7qji+uT5JwWpoN2fIJbLGIFzGBMVcOI7PZmdN
         pCzcooKA8ly1UPPfLWcef8phu/scOFCyK7Ghx0dDUsHzP1Wg2F/DTLOdoxJPQORuwnBe
         pWq5v6x7AmvKrOtJojYmotx7llZrkomBwSs2CJznM1U+LUdmTvvBKca96vp9re7O+rDs
         ueng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=LaWyfrlDtTXGqwjbL25ghy7U89p3+IgPnbOC2re+ZEU=;
        fh=fQue1LVswyroBUi493FuNRGs2h1etDPzgwP/d0K1aSw=;
        b=ca/8rHHaMn8P8bggc8xfaXROo1H+EbYU0yZHpy+jXhdI21T7ix3l3s8T6wk/Tb3gFH
         FbAVSKzOrhzCo70mcRtJBI41QfKXBzqAaIBwx70gm0XgQVysioVa6yEHvUJiyv3ALHK0
         SvO7a8OZ37WL7XAovreiCJ/OL5Y7k3mno9yBz+cCvMY2OYwD2QbpELiLPx0jBjrUyZwO
         86DPsDmud5e45ipUKk/DSwZo6w015Yv2cbWVBv2kWNxorVUZZ81n02ZFU9LfVO4cYlac
         gmAhIcMb1waeo54fzOsKo635POKOtQ+HApZGQSSTFKSJXK/awpdWzBHjqVJ+4vQgQi59
         7zcg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6e8f7161018si126655406d6.183.2025.03.11.22.11.16
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Mar 2025 22:11:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-551-K7xhRw0qN56cjLyuRF_prQ-1; Wed,
 12 Mar 2025 01:11:15 -0400
X-MC-Unique: K7xhRw0qN56cjLyuRF_prQ-1
X-Mimecast-MFC-AGG-ID: K7xhRw0qN56cjLyuRF_prQ_1741756274
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 712561800257
	for <blinux-list@gapps.redhat.com>; Wed, 12 Mar 2025 05:11:14 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 6C73D18001F6; Wed, 12 Mar 2025 05:11:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 69D1818001EF
	for <blinux-list@redhat.com>; Wed, 12 Mar 2025 05:11:14 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D648B1800257
	for <blinux-list@redhat.com>; Wed, 12 Mar 2025 05:11:13 +0000 (UTC)
Received: from atlas.bondproducts.com (atlas.bondproducts.com [23.24.6.165])
 by relay.mimecast.com with ESMTP id us-mta-444-gzRkERf4OGWfdvZT7wNEiw-1;
 Wed, 12 Mar 2025 01:11:11 -0400
X-MC-Unique: gzRkERf4OGWfdvZT7wNEiw-1
X-Mimecast-MFC-AGG-ID: gzRkERf4OGWfdvZT7wNEiw_1741756270
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 74CE240508;
	Wed, 12 Mar 2025 01:11:10 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 3496E1001BD; Wed, 12 Mar 2025 01:11:10 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 31E561001B5;
	Wed, 12 Mar 2025 01:11:10 -0400 (EDT)
Date: Wed, 12 Mar 2025 01:11:10 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Chime Hart <chime@hubert-humphrey.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: youtube dlp?
In-Reply-To: <35d3aae3-ad01-1f78-a426-dec2332a8f5a@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2503120105090.3554148@users.shellworld.net>
References: <Pine.LNX.4.64.2503112329560.3552976@users.shellworld.net>
 <35d3aae3-ad01-1f78-a426-dec2332a8f5a@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: whODrq3g7EQgDYUvszdsT1QFSzw3un5wtRkSs1kGoqQ_1741756270
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: VQJPhEsCAQIknYSIkYvpLyZaggZ6MOITGUhkQk0iDKc_1741756274
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

Chime,
as I just wrote, the syntax provides for a search.  Further, if one tries 
to  run regular youtube dl, the message states that YouTube dlp has many 
of the same features.
  for me personally, I am not interested in viewing YouTube content. 
YouTube viewer by its very name suggests the downloading of YouTube videos 
for  viewing.
Shellworld has limited space..something I get reminded of from time to 
time.
The richness of computing is how individual and personal that process can be. 
One users needs does not equal the same needs for other users.
Does that resonate?
As I recall you required a script to convert content drawn down with 
YouTube viewer. That requirement alone, for me, means it is not the tool I 
require.

Karen



On Tue, 11 Mar 2025, Chime Hart wrote:

> Well, Karen, I also look forward to any guidance, but I would be surprised if 
> yt-dlp has any menue structure to display results. Seemingly at most they 
> might just be a list of urls. As we discussed yesterday off-list, what we 
> really need is youtube-viewer which has that functionality. Trizen also has 2 
> other similar programs straw-viewer and pipe-viewer. We have none of those on 
> Shellworld. I am not aware of any other menu-driven youtube type applications
> Chime
>
>
>

