Return-Path: <blinux-list+bncBCLPHQH4XEIRBHWR4SYAMGQEFU4YXLA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f200.google.com (mail-yb1-f200.google.com [209.85.219.200])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4868A2E2B
	for <lists+blinux-list@lfdr.de>; Fri, 12 Apr 2024 14:27:12 +0200 (CEST)
Received: by mail-yb1-f200.google.com with SMTP id 3f1490d57ef6-dc64f63d768sf1520669276.2
        for <lists+blinux-list@lfdr.de>; Fri, 12 Apr 2024 05:27:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712924831; cv=pass;
        d=google.com; s=arc-20160816;
        b=ThODsN6WW30iqr5QhUm4TjbwNFytaZMGLrSFDiTxzhZ+m4++2ikxi3qrzSkJSi7fGf
         JRvdJcvI6BeiIMjD0SnvnudfnIkdnkcRWB8I7Jp3TbGEjnfSfIozDpYiC/2lbL6ruAs0
         zk30Hr34wB7fIuDC4I4aJi/Lcl2vxU6/VKOPQ6NS67jjfiLYUWd1eRFZ7j9/Yep9Bd70
         0LZL4qYMPLsMoEPScjOMIb0s9CSgaz7LZp4XkqAqW24EFUGGoH2IS3DMfqCbdsES2o3i
         P6P18KIYRh+rRlQ0Zqh/eLZVdNLNazKtEUhgEg+TL+DgtsefaWxJMLSbqfurvcCyZmsO
         1GRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=8owtLubgeWtsQYZpVVh7UmqIXMLs7N9PVwOl2umSijs=;
        fh=iiO97v8ydD/orC8VX5X+6NEPrjok+caPhJTM15TgZWM=;
        b=hv/J/a1Cjk933BrXk4wBGnl1Fdfs1x4LfFgTr+KyjUOsd+4+oVOCnHx5F9SaSdwDHb
         cmsqWY7FvBhxkIa8i3RF/Du3+tMVAkW2ZzNKzQ24DeY4TyWUYQeC1knSUkTKfwXpd7eN
         vRrV9T2nZu5xw/iELHPC3OhkOrT9AWXtL+bUuF5UQDRmi1HAUbEVVm2F/YHFmE8ObD+O
         aL04nFtZxnLgtDlA3Qd2xJwY8xnLWU1UHulQRRi6ilDbqMhH2ueA+P900NETmCT26Ewd
         7SXNiodpSK/AQPQ/SDzdecZGJ4bvBerSW6M1NNKUZgMwOCqgm+wBguzU7QG125/3vkmE
         /Ymg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712924831; x=1713529631;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8owtLubgeWtsQYZpVVh7UmqIXMLs7N9PVwOl2umSijs=;
        b=i2cjKE0PNbrMwG1D+U9Pts1KSThtSsJUaydQZTwjSyW7O+WlgJi7jexA2PHHFxiiLg
         N6bX2/aKGf87mdWwvMrQkl8SHq3/hKzgHwE0S/GOEQ3fb88qOJJhRIO3XJAr9DjRwddR
         SU7RC3qRy6ubjiESDYWhgQIJA5d3IFLCG7wD/NUEbmnGkQLRqeiXf1SB31TiEzubhE32
         8eR46pIkd/P1J8UsdQkSY/UD1lfdARZE3Li1ySn4nK0rZd5Ofe90Rc8QAyGuRmGGAbwr
         n8Gh/RlUP/W0p0Krl309Xv1BDEhnCS3y4ISdj7MmYlaijffsF/jUNe3E9MAmDzCDOePD
         C7uw==
X-Forwarded-Encrypted: i=2; AJvYcCVH4/74+VKNGPZSTaFs17lPJ2fHZaRdtyWwwZDuiyNOP6JAKffzCVindha0GX5p8AmwmWBlPFUB1BcrCDrWv6qnDL6O78zeE7/U
X-Gm-Message-State: AOJu0Yyvz/6h2yWbSLCrQ2QrTv0zTC3hCpIAJWVwKXgdktuKQvEnNq2k
	CMu7XztSGmTHqVXaAvoS0qQ8dsBKIVnBCNPKblQlA1QdYqiij7CalU9v+L+d5rk=
X-Google-Smtp-Source: AGHT+IEAHsWteuHpbufOAN1ozoiKDOE4oE8w4QQ920ne5rKUGYdgHd96iUYz7ghJwi/A7LWOC9uBvQ==
X-Received: by 2002:a25:4903:0:b0:dcc:1dc4:15e4 with SMTP id w3-20020a254903000000b00dcc1dc415e4mr576992yba.47.1712924830537;
        Fri, 12 Apr 2024 05:27:10 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:5290:b0:699:3f37:49ab with SMTP id
 kj16-20020a056214529000b006993f3749abls994744qvb.0.-pod-prod-09-us; Fri, 12
 Apr 2024 05:27:09 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUq7CwDSU0uYWCsr9eopA5O25SGaEeiJr4B198LO2Bx7Zqlrrl2wZPKEM5k8sE9mW1vSV6WInEgKh4i41Zt709DeSHz59J+lYnlHLK+
X-Received: by 2002:a05:6122:2a4d:b0:4c9:b8a8:78d4 with SMTP id fx13-20020a0561222a4d00b004c9b8a878d4mr2791046vkb.3.1712924829477;
        Fri, 12 Apr 2024 05:27:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712924829; cv=none;
        d=google.com; s=arc-20160816;
        b=hguZwCygipnaoG2k7k56CTQ22ldZYuodbVamchA5TAYT6pWE6hjoDnKAb90dUgtCzu
         cFec5gFFhtunMR3dkV9lciWnK4XuvE6viXUlupIqbWvPAN3UkN/IwPk9ZUILCfQpfXLC
         a3fcHteq2Yz4qT/AF72JQ8o7nEIuyGg1GrVmk2OJo+HGvr3cTFgMTnlgaBOcGoMhoK6U
         1CT+dYTOtp1g4wQcnOk82AduI/UiCNmrkxZcdcL+W6MLIl09lM1qx69D2WbEqTwsA6V0
         IfGnel4DnfJXUyHAQDH9/UUSjNzfAZp/aIiYCmFvBdjz7C8kBW6Fm0hVMXOOuJON1JM1
         4j4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=z4LBBFFvTotqkDuSAAUjO9Y9NvkqkGeCRtGLX+GsGa8=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=p9+Pj7bKcICctjB4K3H0Hk+qHqtxqHSnN3+wq90rqLZ4brK2vCRlN5J5ULDPd7F1XX
         Ya8QM5KNFPMZKMc+1vWs9Dm6rbDaqSg8WG2lfaaJv1S3BAzcbWrEbbz3v/R4YJHsnxlu
         77edYlJIHjufN91AiNortteGJOpXK+4DWSRWAXJ9IMrnM88zLF69unT5rKpmgfIV5PQ9
         jlPguADszVY/9l2VOZZckW+iQJMG6Pt4LfuxwbyFo6TnTUW/sh5WV2NBQ4P+USoNrSqI
         D3fqq6xQhmS64r3IfNOAALzTubeyz4cXAK8QPGERlZEjAcIJWsZvYj/3nlKUBs0IBT1D
         zxOg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id v12-20020a0ccd8c000000b0069b4adf0929si3379063qvm.466.2024.04.12.05.27.09
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 05:27:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-74-rmAmmTIbOhCzK5owI8-Vqw-1; Fri, 12 Apr 2024 08:27:07 -0400
X-MC-Unique: rmAmmTIbOhCzK5owI8-Vqw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7619D10499A7
	for <blinux-list@gapps.redhat.com>; Fri, 12 Apr 2024 12:27:07 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 731FF10E47; Fri, 12 Apr 2024 12:27:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 41ED410E4B
	for <blinux-list@redhat.com>; Fri, 12 Apr 2024 12:27:07 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E72503819C74
	for <blinux-list@redhat.com>; Fri, 12 Apr 2024 12:27:06 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-404-10IdsBtlMu-TE9G_F9tNNw-1; Fri,
 12 Apr 2024 08:27:04 -0400
X-MC-Unique: 10IdsBtlMu-TE9G_F9tNNw-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 05639320DD
	for <blinux-list@redhat.com>; Fri, 12 Apr 2024 12:19:19 +0000 (UTC)
Message-ID: <ff25133a-c064-44cd-88f9-d85cbdbba373@jasonjgw.net>
Date: Fri, 12 Apr 2024 08:19:18 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: How to make Orca more responsive?
To: blinux-list@redhat.com
References: <D278A087-4477-4DA9-8198-FE49DB2AFCC6@gmail.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <D278A087-4477-4DA9-8198-FE49DB2AFCC6@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Type: multipart/alternative;
 boundary="------------hMfjWsfgRTjPdBlCLtAIj7V1"
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
--------------hMfjWsfgRTjPdBlCLtAIj7V1
Content-Type: text/plain; charset="UTF-8"; format=flowed


On 12/4/24 06:45, aaron hewitt wrote:
> I havon't been able to duplicate this since, on Arch or Debian.
>
> What tricks are being used here to make this happen?

I haven't noticed any performance problems with Orca, and neither have 
they been reported recently. What issues are you experiencing?

Orca 46 has performance improvements, so I would suggest starting there.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--------------hMfjWsfgRTjPdBlCLtAIj7V1
Content-Type: text/html; charset="UTF-8"

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 12/4/24 06:45, aaron hewitt wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:D278A087-4477-4DA9-8198-FE49DB2AFCC6@gmail.com">
      <pre>I havon't been able to duplicate this since, on Arch or Debian.

What tricks are being used here to make this happen?
</pre>
    </blockquote>
    <p>I haven't noticed any performance problems with Orca, and neither
      have they been reported recently. What issues are you
      experiencing?</p>
    <p>Orca 46 has performance improvements, so I would suggest starting
      there.<br>
    </p>
  </body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--------------hMfjWsfgRTjPdBlCLtAIj7V1--

