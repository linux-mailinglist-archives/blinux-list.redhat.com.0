Return-Path: <blinux-list+bncBCNLZ3P6ZIDRBD7ZRGYAMGQE3XHZIXQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f199.google.com (mail-yb1-f199.google.com [209.85.219.199])
	by mail.lfdr.de (Postfix) with ESMTPS id C852288BB8B
	for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 08:43:12 +0100 (CET)
Received: by mail-yb1-f199.google.com with SMTP id 3f1490d57ef6-dd1395fd1bfsf7897503276.0
        for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 00:43:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711438991; cv=pass;
        d=google.com; s=arc-20160816;
        b=mg6W3SAw1Y1LaP4WT5ucz+RdQ04C5zx4Zi5EKwTpqQfo3gtoe3Wth5NHlDX9pH2MCB
         hyLfvaXw9HyVW6035kwXGuwL5jnwiCa8o+WbqXW9hDjQo71oyClHINi1m7hDNMEdXx8c
         X9cpDoIL1hqiYRXfG4dDsj2DwKyaSDeVgUd0IS9XE+rOXWdQI1r3RbA+7lBAntFzJ0bZ
         31joyvHWcDqd0MNuVroBljqBG1TFznFP5iFO8EIFA2fLwy0FT8wuEYNADybfyAZrgjJK
         kBmImZ/UlVskmIcI/nHdY3zT7mtpzd2vA/4WpOuA14nT+DDf7f0rh68+Bv5JDs6iLouF
         cWYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=6VqG0PrRYXBMRYSWcHhhrQEYLyJryhrw5sAfUSFM0XM=;
        fh=fzqKPLbHbbleux1rV02bWYrwtExRIThU7qV9GylimgU=;
        b=HfqSajerw7hkLlBLsebL6z00Ua68tSyqboogmEs9Kq0hIBiMYzwRueawRYA/PMmiE2
         +1EdwoNTbNXCNrIQyDeCHZMEJ5RP/wnQmGpCzuUV1Jvlg/iCZDAojK8bNlUmb6rq/46b
         9D/t3/pUK5ZfwdVzML9/a4+vRXC0AJvvg3+7xM4DApRjcWla9rTZ7QYdo2vyNV26rF9J
         mhYgB13z9x3hw6kGPBw2WICdlH7ArkwTtuiH4jTPCpyplcH0dPisCwZ5m0EMydue8kL5
         nm2SS4GgK+G3qu+4UD8dyw7K8naA0vf7R622lyjJLAC481gkMAYEVILfNZrCeHni/9eL
         C/sg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of khalfang1366@gmail.com designates 209.85.221.54 as permitted sender) smtp.mailfrom=khalfang1366@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711438991; x=1712043791;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6VqG0PrRYXBMRYSWcHhhrQEYLyJryhrw5sAfUSFM0XM=;
        b=Y6OdTvau08HLHtEuyaYEzWBmYx/FlasKOMWx0ASwuYkuwaYlCmPB4LPhkGNw+DeIMR
         eckizLkRvC4J/tKLThz0Rujql/LWJ47L12SmjRDOP/cMId4RA8RtB0QTrkCf4zhlApzZ
         kQFwnybjkzwEWpbCGeC/VDF7jW/WNj6oGjG+ywpGH6gXlcRu2pYXEF+1EKIHIfaXaQK+
         xEJX6XaIORJGNajPqh3/8sD41J7dvs9RCVYrA0O92DT97+WTe8mEjGnlluDkbcaZvqH+
         +3nNkec+knxr+Z8zETFB5qvrgQnqO8lNApTPuAWUw/fSbQvGTtWd8Pf0yN7JMdn7R6B2
         HqUA==
X-Forwarded-Encrypted: i=2; AJvYcCV4C7xhY7bU2ygh6VrPjv7feazwRuPRFEjfepAcTMUcXP+bjJokZz3Y+AKRra4chBvyB3ynOkpyNUOUPLKm50Lt+Wb43uRlaHcH
X-Gm-Message-State: AOJu0Yxc58pULuMq30PDd197aefpS6/hhRSDjwdoTZjhkooYmQCtrACT
	904fj7kHP4FzvRQaPp0idiAJwmnN2bYFpEPrjeIwklkyCBWzEWLQI6zRO61jgq4=
X-Google-Smtp-Source: AGHT+IHeMPwZFenWk0/d3UpyM9aJXJWz224WYJFbMrlab8hIeW2TWz9RNSFsixdnWJdjtwp3L2ouZg==
X-Received: by 2002:a25:add6:0:b0:dcf:afe3:11bf with SMTP id d22-20020a25add6000000b00dcfafe311bfmr7321916ybe.0.1711438991398;
        Tue, 26 Mar 2024 00:43:11 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:dfc4:0:b0:dcc:4b24:c0dd with SMTP id w187-20020a25dfc4000000b00dcc4b24c0ddls3823470ybg.0.-pod-prod-08-us;
 Tue, 26 Mar 2024 00:43:10 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXAvpqe1qa4aHBRpw/mn/hZyNFwZVJWkpeUqQ1B9CkMCW6gbvgSTC0S3MJojYTLBvd9/Clvl9zuNBpvVxpTglrVD4DuZdXxOl7iomSZ
X-Received: by 2002:a0d:e288:0:b0:611:200b:781d with SMTP id l130-20020a0de288000000b00611200b781dmr8742491ywe.4.1711438990442;
        Tue, 26 Mar 2024 00:43:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711438990; cv=none;
        d=google.com; s=arc-20160816;
        b=dymeZCUP5WXDhbfYyXxiYcjy+fHRzRM4EnhAEgSStFSuf9v+xPtoWjTa7QNMs/Z5LM
         rPgCnKci4FaVQM6Las03pdb3JS/uys6gdGh8VY/Nkcb1/ndSVaZ+YNdD2gSvn1UK2zrv
         DvUoPMoMt6o/MZ1hLFgiCYMisuA4wEKGHwAwvPcKnwY6+UsJM6sVgjSd52ZaiLWKhqI2
         Sy7bs7nHjgYYdivknlGWweISvk3q26TMvs54+C8TZ8v3B0YknEKT1akvQlECNTdTIcuS
         bex5T1bcMJSpsAnfLpH10jcWxNeJux6rWBEhp3Cn/Mat0DsMXSJPgvXHb4pyw1wCDUFh
         d/6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=wwb5nygy8QNYrmagO9HtE9IXZY7PdG5PJXNNZIGdLCI=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=HEkNgc9Iw41rNOhMHNREY9/HBwAdRCUFwpy5XBkxVpbu+XpRxjH80N/QbT1MnArAcw
         hSXuGR5B9MA88PWLOOvS/b0sIdDUqOEA+ru/KdfNy/jId9yTQETymmRosE2DweIPY23J
         QXeo3kTZ/G3wRAn+fKvWBsnyDrhBrhHnhaW5K/cVZroM3ZwBR1hqKHBG7aBHFaznkF7/
         4Vf8U0wlgebiP6izHBWCn9BlaBC1bq11aC5VXpIjr4quUwq1Fbm9w5pU3xaCi7YtEm+Z
         ya8aZeNlQ5VgCV+NDoLp5LrvBd7dnZsFrtIQ1amaeUHoJ0cuaH+mbkEPTI66JHXoc3sJ
         ci1A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of khalfang1366@gmail.com designates 209.85.221.54 as permitted sender) smtp.mailfrom=khalfang1366@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id c13-20020a05622a058d00b0043150758648si4450615qtb.299.2024.03.26.00.43.10
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 00:43:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of khalfang1366@gmail.com designates 209.85.221.54 as permitted sender) client-ip=209.85.221.54;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-257-2L42YlJGMAilWHhl9OXiPA-1; Tue,
 26 Mar 2024 03:43:08 -0400
X-MC-Unique: 2L42YlJGMAilWHhl9OXiPA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9515B1C068CB
	for <blinux-list@gapps.redhat.com>; Tue, 26 Mar 2024 07:43:08 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 920332166B32; Tue, 26 Mar 2024 07:43:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 58C962166B31
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 07:43:08 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 05E608007A1
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 07:43:08 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-582-ss23suw3PDGYb-mZIQIvPw-1; Tue, 26 Mar 2024 03:43:05 -0400
X-MC-Unique: ss23suw3PDGYb-mZIQIvPw-1
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-341ccef5058so1269425f8f.2
        for <blinux-list@redhat.com>; Tue, 26 Mar 2024 00:43:05 -0700 (PDT)
X-Received: by 2002:a05:6000:120d:b0:33e:a5e1:eccc with SMTP id e13-20020a056000120d00b0033ea5e1ecccmr5495150wrx.68.1711438983721;
        Tue, 26 Mar 2024 00:43:03 -0700 (PDT)
Received: from [192.168.1.131] (host-80-41-169-74.as13285.net. [80.41.169.74])
        by smtp.gmail.com with ESMTPSA id cw10-20020a056000090a00b0033e7a102cfesm11478025wrb.64.2024.03.26.00.43.03
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Mar 2024 00:43:03 -0700 (PDT)
Message-ID: <59ac150a-ffe0-4b3b-bf44-e32087c8af24@gmail.com>
Date: Tue, 26 Mar 2024 07:43:01 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: is there a command line Reddit tool?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2403252318560.1382143@users.shellworld.net>
From: Jace Kattalakkis <khalfang1366@gmail.com>
In-Reply-To: <Pine.LNX.4.64.2403252318560.1382143@users.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: KhalFang1366@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of khalfang1366@gmail.com designates 209.85.221.54 as permitted
 sender) smtp.mailfrom=khalfang1366@gmail.com
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

Reddit is very very much aware of Linux FWIW, but the whole kerfuffle=20
last year about API and just how their site is likely relies on=20
something that text browsers don't support and it happened recently is=20
my guess. I'd say poke around Github/Gitlab for CLI Reddit clients but=20
not sure if they'd run into the same problems with the API issues=20
though, I always found the CLIP aps clunky to use in a terminal though


On 26/03/2024 03:22, Karen Lewellen wrote:
> Hi All,
> previously, reddit worked well,=C2=A0 at least for reading posts, in both=
=20
> lynx the cat and links the chain.
> Now, even elinks produces a blocked error message, my guess is that=20
> the reddit community is not aware of Linux and these tools for=20
> access.Wondered though if another tool already exists that might be a=20
> part of a shell infrastructure?
> With appreciation,
> Karen
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

