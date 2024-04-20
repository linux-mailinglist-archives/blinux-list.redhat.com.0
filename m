Return-Path: <blinux-list+bncBCM2V5WE3MDBBR6AR2YQMGQECQU5FWQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id B62858ABB31
	for <lists+blinux-list@lfdr.de>; Sat, 20 Apr 2024 13:00:25 +0200 (CEST)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6993c176044sf79546096d6.0
        for <lists+blinux-list@lfdr.de>; Sat, 20 Apr 2024 04:00:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713610824; cv=pass;
        d=google.com; s=arc-20160816;
        b=RtqHbWsMlQ7bMNMl7RWkZKttI+wy+AI5vx+dvcFczqmqXt1fqelcchWYope/zeHqgi
         IAA2dLFVV9R2ukcVNcBRTVa4cjKcprOeG0WxjT5TuBCodeIrnhH+DPKx5CBTJ01lsWMZ
         fW/ALsBHBop55RjuO1xTTgJkQO1rhU3Q171PLOgQcW12Qk4ZzxkxI+bgWzM/mYpBYii/
         vNc/hFYvKC6t65cr1l+/65+dPU4ANiWZP2P8prlZbqfa8mKe8WzwmHJ31A/ROjkpsr7m
         qmnouoJextFjlITzh/afesor9d/reHXhrYY2N3npejISRLMESoJttLCvQjXNRs84ynS8
         sdwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:delivered-to;
        bh=vulTmeZ5FPwfn51dI7kKoIZNjuKGKwnrQY+33Z6Z8ks=;
        fh=i3Kgx7KEoQFSirYz5H/LxuulbpxOavp03mdoILzKEVo=;
        b=ffxHYl3xKXp5OoHDRRJonmskeISuGw9Eyov1XD86LJecKL/Kl+BE8sYq/weTXbezu/
         tQi5FQ2TEF5QPHMx9MKiQjodCCAlFXQJcuiMSQiBdgNKiuLM59nPfEY6bx1276wR+nw+
         vTkrgMolEXju8JICtlelf0x60R3N+J8nd2uirrrDKrNDjqRmm2UOGHOpIIEc+/2GX5Gy
         8udFOSYE6RW983bAlFs2jHe+guYpEvgjHB/Oe7K+1hc/IhIZ8u+ceKOqCGpafGALflwJ
         QKChrAazOBZluLrFvvcd/AN4WWNvN2bBS0Xociiyemo2HwmYhE3Om/tC/E05AkQzefKs
         B8+w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.131 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713610824; x=1714215624;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vulTmeZ5FPwfn51dI7kKoIZNjuKGKwnrQY+33Z6Z8ks=;
        b=XvDDe8oAVtNONovoQ+1tHpHQ9qMhqzxMP9RnwcuQM9RS2ADBq3w5C+wikuYnsuMzjO
         ZFAQ7npuXTdlVfigGpnTnT6DUxHDlUcOFGzPYM8LWaKuAuWJwLX7P6pZTolbYh1xrhh+
         vhUgaXZb2KFG8gPNcPZR7iK4h8gQ1ZkaZWZLCllxHZ2YOazXRkA9BafRcO6Xs+NIhEA6
         xBdUD6PTNgAzQdltbZnQlc077Qp7BupwtJd/3aMvc2mgdt7OPbUaJ+/rYQUCMDfy5h7F
         amDB9xOcJP9fN40KK+MgtL2Tl4mg12y+SkdNS8LtoPslj1XaCkJA5RIjZDpzrgxrrPm9
         EQhQ==
X-Forwarded-Encrypted: i=2; AJvYcCWZW78aBjjwTH6dUStbqMJzlc0HbwMDumVZAQkP7GbyqLcUCctG0bTYACgdT9tvgm5QUqT5acikLF1GwlinTO9+sFGPq828K8z0
X-Gm-Message-State: AOJu0YzSDhgy1MCidO3/+IA8iwpg0WfhTIspokVQu3imnMmAaNKNrQuE
	WeSnd+CPV9oRaLtz5Vuq4233988+thvnKigdisUJ+nYlEmEYqRQchZgcAV1pwLA=
X-Google-Smtp-Source: AGHT+IEk3BhBUrGs9DFWG36t6HfXN3i0Leb7Cxayuc2GKvGbVDwBkQ3EbRfZpUSfY7wFoEK7wo6c+A==
X-Received: by 2002:a05:6214:e47:b0:69f:6a4f:9c2f with SMTP id o7-20020a0562140e4700b0069f6a4f9c2fmr14006247qvc.15.1713610824417;
        Sat, 20 Apr 2024 04:00:24 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:2605:b0:69b:a44:bb68 with SMTP id
 6a1803df08f44-6a05d4e5a87ls46729056d6.0.-pod-prod-00-us; Sat, 20 Apr 2024
 04:00:23 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX7jPMGY8YLovPKNGDjLuKg1WCRQDnxGiFedukOx/OukZ/7CHZGvnHQEXLm8mvqBZ7+W1xwZQocFl/PNNLbwfbitoYEdjnuKHmR2JGn
X-Received: by 2002:a0c:fd49:0:b0:6a0:713e:5c90 with SMTP id j9-20020a0cfd49000000b006a0713e5c90mr1834938qvs.0.1713610823480;
        Sat, 20 Apr 2024 04:00:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713610823; cv=none;
        d=google.com; s=arc-20160816;
        b=UAVlrP9EuGtCawrSSukAczjJwC/1R0EdZaFTCJiXPeXRbuvI6URjaF5hOfnUsTtdKu
         YbY/E9IoY3d+04jacQtdN8XIlcAeY3cFCQEspDb09fE8vz7+ZRvzZnCkQZlAEdzpz9ZG
         i9M5qNvfg6cDm+t5nedolQmyEkT1L2xsu45ZlPTpoUcXZjtGh7czTo+vwl7rilTXEnj7
         R+mGjoG5ROIstJtzmU0UwM+rcd4yTgdOZbJ51DHHnDMxyPQxCP0ROBsDdbTAwHrhWoV7
         Z29gKVof1iiCu9iJ5zQi9rgP3TKsS/dZvmrwzmaLnZBcMyiYQBztxYy3dnfHgT79ITHS
         B8AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to;
        bh=zW1OuVv8L4LR3zKYWyzkdWLz5RPw5IOBtP28fC+lwFM=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=nvvKs87NBuJpP15mbEyWNBQhDaJgZhSES9C8ahgAiYN/I1eoc9KZrYJ/D3lnpvbWdc
         vW66z00sFGsgfIroFS7gsVDm1w1x/MjSTPuSd8thXnwFTTVtF4Ze7VoAZyDmAkHv7QIN
         2RCWpBp8x1wGaENt6LRSrPaRV4EgM9y/nwWbOORkzbEMVC8cEC7qTYWMzFc40Qognrn7
         QlIMAQb88QZIJQAFv/YYRu4fUOWjYE25flqQMOsvDiyubAVqiyXa6p6aeFLYys3nK8fs
         BgKLwhajzD4crkv9cGhnvJGE3L62Rpa3qTdDWeyuBefokHxtXPPEryJawe4XKfoYiEBx
         /E3A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.131 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id js2-20020a0562142aa200b0069f276f451csi5828089qvb.458.2024.04.20.04.00.23
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Apr 2024 04:00:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.131 as permitted sender) client-ip=185.70.40.131;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-679-0pbKL0NCPM2yUT0k1MdGog-1; Sat, 20 Apr 2024 07:00:22 -0400
X-MC-Unique: 0pbKL0NCPM2yUT0k1MdGog-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DC66C8884A5
	for <blinux-list@gapps.redhat.com>; Sat, 20 Apr 2024 11:00:21 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id D861944046; Sat, 20 Apr 2024 11:00:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A046F44047
	for <blinux-list@redhat.com>; Sat, 20 Apr 2024 11:00:21 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4D169380673E
	for <blinux-list@redhat.com>; Sat, 20 Apr 2024 11:00:21 +0000 (UTC)
Received: from mail-40131.protonmail.ch (mail-40131.protonmail.ch
 [185.70.40.131]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-414-RZDTh6f_O4eKHYaMdYGGBA-1; Sat, 20 Apr 2024 07:00:18 -0400
X-MC-Unique: RZDTh6f_O4eKHYaMdYGGBA-1
Date: Sat, 20 Apr 2024 11:00:08 +0000
To: blinux-list@redhat.com
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: writing yaml visually impaired
Message-ID: <89a75ee1-c1fe-415e-b637-d4b67b209c81@protonmail.com>
In-Reply-To: <ed94fea5-26ca-41f4-b7dc-6b090aea0778@harrastenurkka.fi>
References: <ed94fea5-26ca-41f4-b7dc-6b090aea0778@harrastenurkka.fi>
Feedback-ID: 26663242:user:proton
X-Pm-Message-ID: 9ad0cbf148bffeb04f8285bda4c83625c8079424
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.40.131 as permitted
 sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Original-From: Rastislav Kish <rastislav.kish@protonmail.com>
Reply-To: Rastislav Kish <rastislav.kish@protonmail.com>
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

Hello Elias,

personally, I like YAML due to its slickness, higher delving levels=20
don't add up braces, no quotes prevent quotation errors etc. You could=20
try my ride_desktop program, it will make working with the indentation a=20
breeze:

https://github.com/RastislavKish/ride_desktop

It works quite nicely with YAML. The only problem is that Ride doesn't=20
respect the number of spaces used for the indentation and just uses 4=20
when writing to the file, what is the standard for many programming=20
languages but YAML typically uses two spaces instead of 4. Also Lists=20
tend to be semi-indented at times, what Ride doesn't do. But neither is=20
a syntax problem for YAML and it's a normal thing that different people=20
have different formatting preferences, if your work requires certain=20
guidelines, you can always use an external formatter.

Best regards

Rastislav

D=C5=88a 20. 4. 2024 o 8:04 'Elias St=C3=A5hlberg' via blinux-list@redhat.c=
om=20
nap=C3=ADsal(a):
> hi
>
> Is there a solution for writing yaml for the visually impaired, e.g.
> docker, ansible and cubernetes use this configuration language which is
> very specific about layouts, is there a converter that would convert the
> basic configuration to yaml, for the completely blind
> yaml's syntax is very difficult to internalize, is there a way to do this
> solution to the problem
>
>
> Elias
>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

