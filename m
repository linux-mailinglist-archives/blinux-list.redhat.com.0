Return-Path: <blinux-list+bncBCLPHQH4XEIRBWXOSCYQMGQEK4JP3FQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f200.google.com (mail-yb1-f200.google.com [209.85.219.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D37D8ABD2D
	for <lists+blinux-list@lfdr.de>; Sat, 20 Apr 2024 23:45:00 +0200 (CEST)
Received: by mail-yb1-f200.google.com with SMTP id 3f1490d57ef6-dc6dbdcfd39sf6496174276.2
        for <lists+blinux-list@lfdr.de>; Sat, 20 Apr 2024 14:45:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713649499; cv=pass;
        d=google.com; s=arc-20160816;
        b=i7IDm2/WCBgjnhGHWRb6HUDMXYn15JxRCwNLKo8ClZNOFxWNbmpuiy9O9jOwh02cJY
         Lyc24nifLqzh1TtNCIx2usDgOysEWBJy7oqpTOIrzydxp/p+VhCsLXvGKH6Ou5vmNzsW
         3vC5paZA1y+V/IeslnaNaMhZoEGlgbHM3gOebRu+xDym3D0FvnxPZGHY41lkE9ctQsSp
         kYso9iwVUm6oiMDFCbSviSxg3frPZ7BB7jP2uJGIoB5lGNY8wf866bW16xZQswot7OU7
         bbZhAB0s6b9dyEn7gmcr84f1Vrr8qkdVpY+h4ZoCu8hPInMc7B6h2CAMr2lC/bm+Q0et
         G46g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=hDLGwxOJ9kHzZX3VHjQ+RogvbC6i/0Q1mFFAkKS1jeg=;
        fh=WSrbEQTxM25iq7Ye1bqo4I1Zwthy1kFiYrJS/svwrpI=;
        b=oQikBHvCEbbp8Kz5JQ3+5cPraODntvDiw8hbgz3I/Rt2WFVHG/WohKd76xrXTBRwKM
         oZ97vQh/kcayK8Vktw2J+OjIv1RcBo1ANgHnZBWYZNJmANGoIf87VCCzsic4VmljurgY
         5mf/iyitf/qBUA4IkhL3L4dysqSi+Hmu49VarBT2TiAFv7hR2HJKn6b0W0ja3FRLcr8K
         wpLzR+pU+5NssD/ZD+5Rkkxnmmd5yJhScHWr2ZRm4IUNigRikvRb4vHJyURJi6SVDLBs
         es5fAThTVtBn9Dl+KJUrRH6mL/0EYaeDR9IOMwdAYQ4MyM7sqU6sCRxp2WhqBz+5zZST
         aqYg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713649499; x=1714254299;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hDLGwxOJ9kHzZX3VHjQ+RogvbC6i/0Q1mFFAkKS1jeg=;
        b=P5IIyxVVd3AYZy4lgyI19H/Dh06mSdVQXkEJuIIghvRd2WW2G36lYhBHlNO9v9z3Jp
         PG+rMyd0jkfuwAxi2uTKYoGxrpvH9/tqsljyHND0NFhltvH/G/UtUY0qQjAbHotslxlI
         w+NG6oD5O069U1ZqD4VxdRpaTtLZup9WxM6s5GJKLEbiItqrkBfaZHJ4gnO1lE5lvzQW
         RHE7HG5JtGy6OfTxjKNsuw1PtW+UdupTFhvVWiQyNf2ZjqKonJgP4nQ/e6/Jr5xJk8Sc
         DjjM3DE6UBpDWl3d0o5kxGUHRAJNA/0MbkfG6IqnGH+gr2R3RmxbHDuzX30G2Vw/c3bD
         H6zA==
X-Forwarded-Encrypted: i=2; AJvYcCW1Ny2ZoGcs3mnI5kTuAbYrFS6LNHoBMpxsWex98Yj+/++ieIDVifs8xTamt4+c/CN/C6oeO3U1iP8g+pLFmdNBwn8NMkQBtjTj
X-Gm-Message-State: AOJu0YwPCUZ927nGl2n0ItNGdKY7FicuP0Mu1xqAHpujkaH4yJq5mDK1
	tlF1CZyi/rd/Xpsk8ifswq7Icnf61Ly7auuVKDuu9/INmF+HlsZv6d+89+MrngI=
X-Google-Smtp-Source: AGHT+IG0zdQ+ZdtUrqpl1lnAgrmGXObS3tE11fulZEomRSeHQZc9ee2TfhNTZ/47bxFHZLFeKyEX0A==
X-Received: by 2002:a25:b846:0:b0:dcf:ba3f:a6e9 with SMTP id b6-20020a25b846000000b00dcfba3fa6e9mr5143478ybm.42.1713649498946;
        Sat, 20 Apr 2024 14:44:58 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:d056:0:b0:dcd:a08f:c83a with SMTP id 3f1490d57ef6-de4805cbab2ls1639505276.2.-pod-prod-05-us;
 Sat, 20 Apr 2024 14:44:57 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUk/6OW2A4F0j4+bl2L3c6PkjdeNI5yDQF0BKMCLXW4r5Nr/oyULF5WbkwQ17jKgxoFdpDxyov8WoBz76UqVBNktDHVj7GC8b6u/Nm+
X-Received: by 2002:a81:4c09:0:b0:617:cb98:f9b2 with SMTP id z9-20020a814c09000000b00617cb98f9b2mr6022609ywa.43.1713649497763;
        Sat, 20 Apr 2024 14:44:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713649497; cv=none;
        d=google.com; s=arc-20160816;
        b=ttr5Z57d7rQ3nbSnrZeNkom+cVuC4fUQg34ET3ngUxaOv4jsxtHAOm3ZuQwmkj2SNB
         bRpbH5lS0VgD6yvGcRnoCoIRdCG7P4CKMtHWDRcMqKX2Zzzxtv8nkxanem1SdQMsJ8SE
         RZ3RqOdiPFg2H9imeD9rbwifYzZzGfg8LFK1H+X/x1AyCMvFFzRlZmRx3WbPm+2f6w2B
         IqRMRIlAvi1jt1sjGUQ7k2IrKKtvP2PhdjxZqgvehNBbcaKTGQiBxYlG/D0Vo1rOZQjr
         dWByzpETxyGAqYkOyEWG0+mLAgYYGTLE4OEO/krcH10gvh+6eGyGCDoDnDUMKC2OCbH7
         XOng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=hNxUahdeYAJjz0+7qTcRYBLlF64S3uRzVnidbLLdv8U=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=UrXJcSF91hvkF6AJHwgio6wnVymT9/bop4TfHHxxHM0HbsIzLhTT6B+Sd0HhxZwxFb
         dCKQwMoYZOP3JuZ+318Crps7WV1k6j1a0EwXU4FLoy7dqg1nQZJO7ivwceTVV3X6HlZn
         0lsvxTQEGf6nFZH7mtsZpAYjO+YfVolDspamaUrgtKMInJGB4dpKORQrfzJmzHBJBJBI
         lR+CMfhz+c5zaR6MCguk3fouCv8aFZ4WrlCrb6UJNdHkj41sihMn//iKWcFtTtbjWzCf
         w9xZmaxNiqyw3QNg0CTDaT/Nnzn9vKE3M8FECrHLC+6GwOnY/JpqlPmnmH6NmHUO15gl
         9iDw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id w4-20020ac87e84000000b00434ea6fa215si7200669qtj.654.2024.04.20.14.44.57
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Apr 2024 14:44:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-691-3e9Jt-wDMnKf5Ahe_6YMJw-1; Sat,
 20 Apr 2024 17:44:56 -0400
X-MC-Unique: 3e9Jt-wDMnKf5Ahe_6YMJw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D68D229AA385
	for <blinux-list@gapps.redhat.com>; Sat, 20 Apr 2024 21:44:55 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id D01FF581DC; Sat, 20 Apr 2024 21:44:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 97919581D3
	for <blinux-list@redhat.com>; Sat, 20 Apr 2024 21:44:55 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3D5F089A240
	for <blinux-list@redhat.com>; Sat, 20 Apr 2024 21:44:55 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-116-wtOF59OtMkGJrCvluCsqEg-1; Sat,
 20 Apr 2024 17:44:53 -0400
X-MC-Unique: wtOF59OtMkGJrCvluCsqEg-1
Received: from [10.0.2.1] (jpw.jasonjgw.net [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id A75AC32245
	for <blinux-list@redhat.com>; Sat, 20 Apr 2024 21:44:51 +0000 (UTC)
Message-ID: <172c93cc-63da-479e-9970-602785712507@jasonjgw.net>
Date: Sat, 20 Apr 2024 17:44:51 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: writing yaml visually impaired
To: blinux-list@redhat.com
References: <ed94fea5-26ca-41f4-b7dc-6b090aea0778@harrastenurkka.fi>
 <51c07b57-049a-4256-a757-0036a3355c30@jasonjgw.net>
 <865b129a-17df-4725-aa47-e48387a8f39f@harrastenurkka.fi>
 <f8abb0f5-0fb8-4ee5-98e3-8b2e516b807e@mail.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <f8abb0f5-0fb8-4ee5-98e3-8b2e516b807e@mail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US, en-AU-large, en-US-large
Content-Type: text/plain; charset="UTF-8"; format=flowed
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


On 20/4/24 14:25, john doe wrote:
> The indentation will be done by your IDE (block, flow ...), I would
> focus on the syntax and use yamllint to validate your code!
I agree. Similarly to Python, the indentation is part of the syntax, if 
I remember rightly. Use a good text editor or IDE that takes care of the 
indentation.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

