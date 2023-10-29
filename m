Return-Path: <blinux-list+bncBCLPHQH4XEIRBWVD7GUQMGQETSXCCEQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5737DAC74
	for <lists+blinux-list@lfdr.de>; Sun, 29 Oct 2023 13:36:44 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-41cb7904d5asf45780851cf.0
        for <lists+blinux-list@lfdr.de>; Sun, 29 Oct 2023 05:36:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698583003; cv=pass;
        d=google.com; s=arc-20160816;
        b=JKaLBq8q005RmYX/dSrG1sY79/ZcpnooT5URf9j10JOtssjR5LQ3l8QsbGq7oGEzFa
         h+mRST3IMIlSOAc5xjms2hh46dai8MkYe8/xl/si91qm9GUvp4fIg97z5swTIFF61RBd
         M6sF1kA4zFH2ycksZSfFseMUjVXULCt7oRckzgi13JLUPV1u1ggE+ysACnrLZtTKyeg9
         6fgKsFJmZbObNKDdsRuNqqR8yXyPTyKd2Bdn+P8WcFfwuLR3xbfEKojnAaG+pABM25jo
         /CRYReFtMjRkSm/oWEr3kdRwlX5BH9dZNKPxN7ygxNYah3ZGwhYlpRgRBcK927t/m4zI
         kKiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=XCIUqdbVzLLenlPcxSPQylsdXEDVdXB1nSpeSkNAI+Y=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=zP07L8ndMisSekTqh5BH5KadapvpLfY75rLyBQuyyBOUE7wXriZb5E+xtFbbuSjCLt
         upGbZ8ICBw4rciohbMbBXic3wJ8vcWXQb0D4POTnLGyHxj/ja2sWVm0qq4M0AVJUuZMJ
         yH7G069VWInliQa/9nhCZQvxVVAPT+0BB911O6h47HPymgWt5NcfIRNDodHFCmD6Wjrr
         PuxmaLu1HtNlLU2DMd+a97NaM85/3C0aQypmdXtzTiZ+1CR+6g2XOGCEx2OSm8jhLLQ2
         qYPjTkMqAGLRg82izzdNJxJ6ggzYUkG922FMSTzvvuwNi1pKKW0u5LUeDR8m39Qhs0dl
         b9hw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698583003; x=1699187803;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XCIUqdbVzLLenlPcxSPQylsdXEDVdXB1nSpeSkNAI+Y=;
        b=kt6t5as7nV7RkwTEQqwt9cLw5nFsuEdTz0erGuXg6M+VaYfPQYS3d3bWwXq/87IoCf
         /9bZKMxGPYwbqr4VmxNwzAkmzVlgjrx5TOrSN1HgyEvaFArJkAtx+KxHXIpY2voB0hd3
         D9o9GqdzgvYepsGBXZart+N1mTin+XMWK/bpxhXK1VOYlMquZvzVFQYinFLYEkf/y/Xl
         sDiKNYcZqvkYFx4WK8i+SUQ2lFjIqS1zMnNN6mIx91J+7SdTHaitvN7z3vUT6iNZRHB4
         LseuBm69f5YA7JQtnXhTiWqUQgGTQbh557JgGFKcYyRxaY+VZwTf8qZzOaSB9ntf9J3u
         H2rg==
X-Gm-Message-State: AOJu0YxEJlvjKLCiOsoYCHRanaZnmACu/4wZoOVjVJ+bIOIg28I+N7pa
	e6Jyj+VmhXcIOByVmw40Qwvxog==
X-Google-Smtp-Source: AGHT+IEmqEUEJfly9gIRxyQbZ/V6fE3dOxXYDefaonIVSF1//S1DS80l7+Sz2sGNuLBfmf67WesJWQ==
X-Received: by 2002:a05:622a:216:b0:417:eb3c:494e with SMTP id b22-20020a05622a021600b00417eb3c494emr9882457qtx.59.1698583003224;
        Sun, 29 Oct 2023 05:36:43 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:988:b0:41c:b879:6082 with SMTP id
 bw8-20020a05622a098800b0041cb8796082ls1968369qtb.2.-pod-prod-09-us; Sun, 29
 Oct 2023 05:36:42 -0700 (PDT)
X-Received: by 2002:a05:622a:190a:b0:41e:3d53:74fc with SMTP id w10-20020a05622a190a00b0041e3d5374fcmr10353076qtc.49.1698583002362;
        Sun, 29 Oct 2023 05:36:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698583002; cv=none;
        d=google.com; s=arc-20160816;
        b=ASh4+byHouRKglHSWPRsMszNacI0YIzguiMOS+1RKm5GXPs1VzeHQKNuaId/ABq/bv
         hd15jX48A3nd5nkBy5dGwDvAPxWR17on0Dif6cA1Mh3dyXz/S8M6J2XorGj5BmeyXNh5
         h2sB40dBHLkn2ldnp8MOU2wWOz00rYALiFYs2VIn/tO4oXmL9yvMbUEhbR6emL4weIQv
         S4Zjte4OvDY82PlQEEtm/uT2dLP7eEswcAntKjJt99gQbMH2D41WbI3PmdH0/664xVaF
         vlamwD5lqe5u2LtZ7RNqdZuXsAfUg/8jHZ6yV9jv26/Mb/Y3QOMOGpdKdAQK+cHq0fds
         MCVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=YPU94zuv7EWnz+5i290rux6Njpz0tm9L+dJkOrYDLqg=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=j7IR8HhYkWq8gWv33hiXE3nk47rjrGcpiJR0LWG1nC2Hcj2MCEnqJ17Qgw41EWNrmb
         PYPRRcbV0LNYo0jwZ8db0OWjHjuY3tYv/xQH4Go6CI3NJqyWhkrHI9aTOGoiTBtJrEKh
         PBte9kSV502ikPbBlK2Bwgd/OZ3ZXXNQBHVSJ5ihVzZBlokEeVJkS+b0cOyDJzrTN2JK
         EgwK2rB9+0qEiQU895bSv+4Ho4TRqCu/MdELf3u4UkZ0WSYsMU10wXZsd1p1XHmDE5+D
         KuWeSsFiMgELAQKHewzb+z518/V3OUDzbtRBYC3Dtuh87QN9oWahuGdmennd7ukl8ROS
         nqrw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id d9-20020ac85ac9000000b004198ac8b4d8si3845898qtd.496.2023.10.29.05.36.42
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 05:36:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-631-KB-mrLV9PjCICAvoNTp4lQ-1; Sun, 29 Oct 2023 08:36:36 -0400
X-MC-Unique: KB-mrLV9PjCICAvoNTp4lQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AEB6D101B041
	for <blinux-list@gapps.redhat.com>; Sun, 29 Oct 2023 12:36:35 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id AB3751121320; Sun, 29 Oct 2023 12:36:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A20181121319
	for <blinux-list@redhat.com>; Sun, 29 Oct 2023 12:36:35 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 74B3388232D
	for <blinux-list@redhat.com>; Sun, 29 Oct 2023 12:36:35 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-536-4IekXt1EPWm2ensECSmRRA-1; Sun,
 29 Oct 2023 08:36:33 -0400
X-MC-Unique: 4IekXt1EPWm2ensECSmRRA-1
Received: from [10.0.2.1] (jpw.jasonjgw.net [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 59E933216F
	for <blinux-list@redhat.com>; Sun, 29 Oct 2023 12:36:31 +0000 (UTC)
Message-ID: <174b8205-a316-421b-8665-5728cac92ac4@jasonjgw.net>
Date: Sun, 29 Oct 2023 08:36:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: No sound after Arch iso boot
To: blinux-list@redhat.com
References: <55be789c-4884-46be-ac7d-42ea289ca759@gmail.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <55be789c-4884-46be-ac7d-42ea289ca759@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
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


On 29/10/23 03:25, Pavel Vl=C4=8Dek wrote:
> my HP 255 G10 has Realtek sound card and when I boot to the install=20
> arch with speech, I get no sound, so has Arch some script, which try=20
> to detect all sound cards connected to the computer? I must somehow=20
> switch to usb connected sound card, because I am unable to use arch=20
> install script with braille support only.
>
When I installed Arch, I followed the instructions to install it from=20
the shell prompt, without running any install script. Install scripts=20
are optional.


--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

