Return-Path: <blinux-list+bncBCLPHQH4XEIRBAUBRWXQMGQEHXJEX6I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com [209.85.160.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 9938E86F0C8
	for <lists+blinux-list@lfdr.de>; Sat,  2 Mar 2024 16:06:44 +0100 (CET)
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-205fc343d1asf4608215fac.1
        for <lists+blinux-list@lfdr.de>; Sat, 02 Mar 2024 07:06:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709392003; cv=pass;
        d=google.com; s=arc-20160816;
        b=eERehFdISTfk0RKIek6aUIV7Le7nfcUEm3RHcbsKK93yZTnDFRJ686bJJEH531JgbV
         1yfviyZ7z8ZnFbvzRFkzEMO98zkRRvr1BAZ1j4UOCS50WKm76M0GrrSoYyl0PEbP2BpG
         GhfF6bVtNe729unClP6VDNLQsaUd9/y2FmWh4BGClyrLfzUPIprYhSK9I/jEuW0diILD
         udCm6uNyuuqT/QEkbqUtGA2gvTY1BK1W2PCizjiUTJni4wh907Br2PQrYWpWWZ0O1f2m
         LpFzuDt9OE+Kf1fD4LNvaqLeHHlVIUo14ThpDlyCaMflYkiyCy5R7zzzVBNua5NBJs/B
         zgiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=Eq8EYScBvURmsXQYfFnTowy3LB1KKmNLAwSOYlYB27k=;
        fh=8YmOmwEN4D+c+zG5GF304i2gzfVfZH/QwG09CX4yuf8=;
        b=d1EeMR/hvqpoph7J0ktBQZrgoNAIf6GBrnkWsLOTRjnig/rtCothzQhSkbmSvS88hI
         ulxN0+719VoGRV/SKUiT0xAerh9sH7EGkEfHPxVupfBTXVIdqsZstv7del86L+eji4CI
         kRMeiO80Y+Ua2Qk8yA0atHK4eTP7Iz5/QF5CfPiXurFwuyUxSbKC+kUshAFNkYpWpTsX
         tbUFFnYL91CaatKnev9hURwRyoX1hJcFpL65byq53ICstIBlODr4ZASaRTL9k/EPSC4i
         fGCIGZMd2iTaNK5TbNX44bgkFW1Lhns68lOPCsam6DvQRWjPv63wxXqod/qPLebtQwwR
         Z3Bw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709392003; x=1709996803;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Eq8EYScBvURmsXQYfFnTowy3LB1KKmNLAwSOYlYB27k=;
        b=pigRvjuCVOjcwLB5L3q+gx0CMr6TjRD7rmb5mPTuQDXnswkq0Rhy1L0ZEbON3nYyqb
         LvkCoLyAjEbKrYcJbYZrTUJwNC3AoWSHrNWsQaKs83LVoPm2oI35Bu1M4URFYCXTc8GF
         Fp/ebO7dV+60MDZItnWJkJAtepMKNfxYP3uDWE1jUhUbutH4+U6wyyXpI7od68unoRUD
         ULDkjpzNNiKTCJtPHiIsYE0fW0gpYRsbfJmJuNUXc8irRRoD4UmCTd/LNdSW7fy6ogqB
         X1vya8yPQLIQn5z4PDqyx3ZyGWS5gzEIWj4tTgES2hbjiSYayooTPr3wCjeOFGeha7tE
         MVmA==
X-Forwarded-Encrypted: i=2; AJvYcCXCEyjOk+j2LVK5FmqhA/NqpxdtQlUQz2MFE2nceI2Lw1vNcpd/kqKcYJrm4UYTHeNgaq7RXEa9sYWcrm21D7LvBI1u9H2F6UvJ
X-Gm-Message-State: AOJu0YwPhfu0ZAl8xxrRms+5lNViqcs3r6xapEzCInT3z3QIKB9dOj6d
	oe0nK+J7ALkXJIAvg4bR04P5emtM+S6RTMLihQmoejLkY1UucrCvIg/xu418Kus=
X-Google-Smtp-Source: AGHT+IF6/2R4iOi64DoXJn/GKz3OWmW8nFAEfKjDHHBcvUoJhdfjfA+tjcyC+XKNhjqPjDeVCa1n5w==
X-Received: by 2002:a05:6870:e40f:b0:21f:2b1:cdea with SMTP id n15-20020a056870e40f00b0021f02b1cdeamr4729033oag.57.1709392002965;
        Sat, 02 Mar 2024 07:06:42 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:8e18:b0:220:8bd7:b522 with SMTP id
 lw24-20020a0568708e1800b002208bd7b522ls425127oab.1.-pod-prod-08-us; Sat, 02
 Mar 2024 07:06:41 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCU9Ol9OfuulNVt2fWqTEmAoKKqmaizJz1L2vdDYjb4gFMrPWymsQNz6kX2P+K0lCE+Z2umk0iPzNafmob9pUE5Xf1FJLJKLByRmj0/u
X-Received: by 2002:a05:6870:b90b:b0:21f:c801:cecf with SMTP id gx11-20020a056870b90b00b0021fc801cecfmr4562875oab.16.1709392001384;
        Sat, 02 Mar 2024 07:06:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709392001; cv=none;
        d=google.com; s=arc-20160816;
        b=Dm8VlczIdLQwRaVAhu2UObgbs8/RkXTStyw3eHTZY1zsCxDEi2Mz0xN5B5noPmiOZY
         uTs8Pen9N7gZE8f0nHeNGT8MVHTCjLm0FYYgynQ5KR4yeAK0251y65YXgCY/F84Uwopf
         w7okqyQBxX0RziuO1M+OB5wRa9Hxkd+Yc4GTLGSOj66kMfSvq39KmD/xd5yoNKtuh3CP
         ePHgFjpmvSQ0vqT2MNvhZsaNo0cItV3+3X7BMrtQ1R9jA8bBw0eCLGcDw/GrAE933pXv
         cWqREEIW9BmQcamcXv9Cx1LqbsJ3Z45TMMfCSewx1k+N8ctAIsIuJ9g6ye+q5tvWjXZF
         q/pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=XIMrGisc2csOx/ymTRBh9A/ff0d0uv7bhSNRyVPoqyE=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=FFKoXfSgMMQNFBIxvHjbBNCp0dw4BE0Z8Zgt9ACXszsUG0UEbFMaEZQA+DyLC3CDsy
         K89BcDC4tu4I8XXbG45xUNw6U0fQragTCgz4e/Df2xsKqmqy/1b93Kv6T8jlKOom0wkE
         SoYDBFAN0h8k7aGlPxPjb9crmtzSF+MlB5GeJNvBHFTJTcvtYUzQX+rPJM6FeAEp7Py+
         YKz9A37jeijK+hUZbvHbZTurKZjyBBfETqPh/fDj7Ft7sp3v+lww+gR9KjJ2peD5SBIP
         GDKGnLhVC3ZB6zsKLTYzaXE/R9Hald/xHhids134dAvfEUuWHxUrNZaamHLg/JpFM3f7
         PX9Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id by5-20020a056102504500b0046d15d9b51bsi932321vsb.385.2024.03.02.07.06.41
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Mar 2024 07:06:41 -0800 (PST)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-540-2Fz6OGOvPSCRsGKjVz8AXA-1; Sat, 02 Mar 2024 10:06:39 -0500
X-MC-Unique: 2Fz6OGOvPSCRsGKjVz8AXA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5FC2C84AE40
	for <blinux-list@gapps.redhat.com>; Sat,  2 Mar 2024 15:06:39 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 5C2CB492BC7; Sat,  2 Mar 2024 15:06:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 23249492BC6
	for <blinux-list@redhat.com>; Sat,  2 Mar 2024 15:06:38 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B4D863C000AC
	for <blinux-list@redhat.com>; Sat,  2 Mar 2024 15:06:38 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-634-uG-wjZPFNs2WgjRZ9QgWUg-1; Sat,
 02 Mar 2024 10:06:35 -0500
X-MC-Unique: uG-wjZPFNs2WgjRZ9QgWUg-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 98840325D8
	for <blinux-list@redhat.com>; Sat,  2 Mar 2024 15:06:34 +0000 (UTC)
Message-ID: <ac64bf57-440b-4676-a1d7-9f6b023ba4e4@jasonjgw.net>
Date: Sat, 2 Mar 2024 10:06:34 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: solutions for 450 errors?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2402290054500.954081@users.shellworld.net>
 <E1rgBxh-000VYf-8Y@wb5agz>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <E1rgBxh-000VYf-8Y@wb5agz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Type: multipart/alternative;
 boundary="------------ncVpLq5jIDs2Mbn4hSIK306F"
Content-Language: en-US, en-AU-large, en-US-large
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

This is a multi-part message in MIME format.
--------------ncVpLq5jIDs2Mbn4hSIK306F
Content-Type: text/plain; charset="UTF-8"; format=flowed


On 1/3/24 18:06, Martin McCormick wrote:
> 	I could be totally wrong but that's the only thing I see
> that might cause an issue.  The host name and the reverse host
> name should match perfectly and these don't quite match.

My understanding is that, as you say, mail can be rejected if the 
sender's forward and reverse DNS mappings don't match.

These days, you also need to implement SPF, DKIM and DMARC correctly, or 
some recipients may reject messages or classify them as spam. As the 
administrator of my own mail server, I found the test at 
https://www.internet.nl/ to be very useful. I configured the server to 
achieve a 100% score on that test. I would only run the test if I were 
the administrator or had their permission, though.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--------------ncVpLq5jIDs2Mbn4hSIK306F
Content-Type: text/html; charset="UTF-8"

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 1/3/24 18:06, Martin McCormick
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:E1rgBxh-000VYf-8Y@wb5agz">
      <pre>	I could be totally wrong but that's the only thing I see
that might cause an issue.  The host name and the reverse host
name should match perfectly and these don't quite match.
</pre>
    </blockquote>
    <p>My understanding is that, as you say, mail can be rejected if the
      sender's forward and reverse DNS mappings don't match.</p>
    <p>These days, you also need to implement SPF, DKIM and DMARC
      correctly, or some recipients may reject messages or classify them
      as spam. As the administrator of my own mail server, I found the
      test at <a class="moz-txt-link-freetext" href="https://www.internet.nl/">https://www.internet.nl/</a> to be very useful. I configured
      the server to achieve a 100% score on that test. I would only run
      the test if I were the administrator or had their permission,
      though.<br>
    </p>
  </body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &quot;blinux-list@redhat.com&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--------------ncVpLq5jIDs2Mbn4hSIK306F--

