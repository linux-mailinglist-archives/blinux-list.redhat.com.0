Return-Path: <blinux-list+bncBCLPHQH4XEIRB5NY5WUQMGQEZPR5CLA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id B33437D8EE6
	for <lists+blinux-list@lfdr.de>; Fri, 27 Oct 2023 08:45:11 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-41cdc542b56sf25023861cf.0
        for <lists+blinux-list@lfdr.de>; Thu, 26 Oct 2023 23:45:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698389110; cv=pass;
        d=google.com; s=arc-20160816;
        b=EE9hjKqCQvNRup9aBd/t5sbw7op/FiwSY1UrUcT6DdII83F6JA6lZJbw1ftL3kSNpM
         M8fPr233kM7z+NYW3sFuMaJDsVCD1kwgXdPjR/ybGjJTTEpf/OrzgFgBsZQ6gTBhVWtL
         n9xftwMjlAHHCoKjHz8MKf+XXq6r2Ru9lG0NfNaGLhS2PGPDx8UlazMuZqnBamyo8SpD
         sdjGyJscg3ycjKLofJqYlaInrgZA+7U8lwNzj4ZNlEOoHKd3LjTzAFaaEd/Km49FLwvG
         Ei9RAVlq3Vovg3ZXHcp/6eN+PQRmlk5qxCuE/gHUSvlP5n8EI0vk698kewdOKyKhi9zR
         Hu0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=5cJ1xE1w176BkDAcKTy1AChh50/hyy6N3cHJ7T4EC00=;
        fh=TVmeE03SH20bWw8eLYundgemZZjTiZXorccr/m5+IKk=;
        b=Yhh4IeIoADKbCo5nMShTqXl+dA0HjuTf6CBSEv1rDUeNTzSL6VA1XfFPUbj4N8iQ7p
         qdRwsPdjqNhShkQ3JyEEVwK9esyDcOpSTR0RvFrJnqvgMXpM7hMjhtxaLYQcYgF7BZWl
         cpQkmqtIujjqilEYdH/SV6ojVk6yPgfryfymyw10+Bzu63fyBLaqBooffCEfNoiHdPM6
         7OtW4l/NuTEFZInYfPuvh6a2k6oU90cBL7S2iD8gr6DmfeDRneM+uSraYa8WYAPKvfLn
         /mCE+wlDY8kZpO4Y7HIgnJbqD++ZWCTKgKmlV5dG9GjyrnypzGtPbBowy/jBlhBJ/vmM
         rUEA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698389110; x=1698993910;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5cJ1xE1w176BkDAcKTy1AChh50/hyy6N3cHJ7T4EC00=;
        b=MwtYK5+fcBT8bbVeHUH6oEipkap5MKYRCR8ORxz4yjoYdHdQupCkKgwYkLlILO2+tX
         0C1rHcAgREVPaAbWhueEVwHYRSsEKSOWUSaXLfMpRxEuUnbRGtbt2LBATExQL6AK+Dkm
         jk1ZD3CP0LObtMBglVZ6ZJUJ0EHb1J+WASjt0wC0k4Ht58q04kYXDfP+WfCh6uiylh8I
         KGi0wFxJMjbxV7/oq1ldZTtinktTVAdBwxrHnpcNCBH9Efo4odWTgi7+nc+MFqkmssNR
         eXViQWF6EsVYPzd5vS8MFeTqW/KXqlQ5SMDSXWmtyUPe42chYwHhhYa6VwDEpnv7jJ/A
         6rzQ==
X-Gm-Message-State: AOJu0YxRAJoCOHpl/I4C35M/H6jK8+c67rX2mLXnfr5c9W5UKxcKVaD9
	ikPqIBngS9Qg9Tu7zdshidxN0Q==
X-Google-Smtp-Source: AGHT+IE+mhcfg/U+J63BfgQjVQ1s3MyhNbqnWMdJt81Weuk6E4mx4tNqYNHBpoxbjZM7eUBqqVPfxA==
X-Received: by 2002:a05:622a:5ca:b0:41c:bcd4:19b7 with SMTP id d10-20020a05622a05ca00b0041cbcd419b7mr2076339qtb.15.1698389110183;
        Thu, 26 Oct 2023 23:45:10 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:50a:0:b0:419:91d8:76ce with SMTP id u10-20020ac8050a000000b0041991d876cels884816qtg.1.-pod-prod-05-us;
 Thu, 26 Oct 2023 23:45:09 -0700 (PDT)
X-Received: by 2002:a05:622a:2cd:b0:41c:bbbc:2ede with SMTP id a13-20020a05622a02cd00b0041cbbbc2edemr2022448qtx.14.1698389109467;
        Thu, 26 Oct 2023 23:45:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698389109; cv=none;
        d=google.com; s=arc-20160816;
        b=ikF3JlrSRI5LEjuBCq3nS4ubLqdoGFbMvwOWL4Czuj+ca2nPoeJ/I2By8MuV/lHNxm
         VodivBqyX9UlM/fmzDlgbXf3biIhdE5TulXr4nRPxuRXGNACvwwdH5w/TwKqBb2+TChn
         /PPPeIyae3G9QMm1Ljjfg5d72qn1sNW25jPZLAq0LUOJ/4Br9tCE3j2qUs5aNSUN1+Az
         +mScONAs+FRklfrb9C+8d23GkEkd3JKgX0N/a976Ab9SuEz2KwhsfMvbFwIJ56D9UVrT
         NKI6MqT/vzmBfz81pENY7/fJd/6teK849oV6jMgugBp7iomFJqiraEK3Fjr4LPKk034m
         WNrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=BkIfR0FXOgGOS4yRyUAEZ+Rrx/WckuM2tvkrzrl5Chg=;
        fh=TVmeE03SH20bWw8eLYundgemZZjTiZXorccr/m5+IKk=;
        b=uiTq8GZ3KIMqvoaR7libqqiZT5g8q+lvqdUtWqzrx6fbCQgjJags9SR9RXDS2rQzu4
         InqQb69TPrkU8dNDeR2UGb7KyPDDNze6CyGwsrfuaEDDBv3W52UblyYiKKAuRtsm6auJ
         ibLuGFFGLxGfs79CxtjfyrVkGl+dtd2SBWB4L+n9xF3pLsnFCB7A/gCfY4c7f+hwI3C5
         44XYQiKF+vCoJI8eAp7v6II59HN1xG0pse6Le4ZxDIUrrATv6VzGvTmFa0+F9USUvHzZ
         Zm0X6psDD93ZxzXtGjcASaxV8+Zx2MwwTspkbWEDIooS1MTdqFfVZP2OP8smLEO43iMM
         /lLw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id h6-20020ac85846000000b0041805eb94ffsi479140qth.206.2023.10.26.23.45.09
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 23:45:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-169-fjdFw9jhObanpwnU3khtsw-1; Fri, 27 Oct 2023 02:45:07 -0400
X-MC-Unique: fjdFw9jhObanpwnU3khtsw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 77989101A53B
	for <blinux-list@gapps.redhat.com>; Fri, 27 Oct 2023 06:45:07 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 7473B1C060BA; Fri, 27 Oct 2023 06:45:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6C4171C060AE
	for <blinux-list@redhat.com>; Fri, 27 Oct 2023 06:45:07 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 48B0884ACA3
	for <blinux-list@redhat.com>; Fri, 27 Oct 2023 06:45:07 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-182-GZn5JaGqPsieCXBb8lB7Gg-1; Fri,
 27 Oct 2023 02:45:05 -0400
X-MC-Unique: GZn5JaGqPsieCXBb8lB7Gg-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 66C4832126;
	Fri, 27 Oct 2023 06:45:02 +0000 (UTC)
Message-ID: <b8632a9b-404f-4b10-9344-3cc2c9ea66f1@jasonjgw.net>
Date: Fri, 27 Oct 2023 02:45:02 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Esys braille display and Archlinux
To: =?UTF-8?Q?Vojtech_=C5=A1miro?= <vsmiro@seznam.cz>,
 Linux for blind general discussion <blinux-list@redhat.com>
References: <34eec98c-20bc-4f28-9646-b5ae01f8b86a@seznam.cz>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <34eec98c-20bc-4f28-9646-b5ae01f8b86a@seznam.cz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US, en-AU-large, en-US-large
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jason@jasonjgw.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Original-From: "Jason J.G. White" <jason@jasonjgw.net>
Reply-To: "Jason J.G. White" <jason@jasonjgw.net>
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


On 27/10/23 02:40, Vojtech =C5=A1miro wrote:
> have someone Eurobraille Esys braille display? I have problems with=20
> working on it with Archlinux. Sometimes it connect and work, sometimes=20
> it writes USB cable disconnected and I can't work with braille.

What do your system logs show? If the kernel or BRLTTY is losing the=20
connection, it's probably a matter for the BRLTTY mailing list. Also,=20
are you sure the USB cable is reliable?

I suspect Orca isn't involved, and that the problem is at a lower level.

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

