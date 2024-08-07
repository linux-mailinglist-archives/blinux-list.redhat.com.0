Return-Path: <blinux-list+bncBDYIZZNASAHRBCM2Z62QMGQEO6HPK7Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id B385C94B07E
	for <lists+blinux-list@lfdr.de>; Wed,  7 Aug 2024 21:37:47 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-44ff01e344esf3321451cf.3
        for <lists+blinux-list@lfdr.de>; Wed, 07 Aug 2024 12:37:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723059466; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yyc7RgJHd5nX7WN8uoOOsDUt8o8ad2Ubzuz4Sm6nGYKmgBbhctGlyYm2JHC9oTObge
         9SL2zI3GbOwnMMEvRO23olHQgw37bkTNZkZjbsllSqOehL5tzQUpT0UqruEfKnNAqZc/
         tSVXuBl5TdOo5qnOP93m2H5mJeVVdaKOVcpU2cp5PAMooOIHniHttb79lZU4//QIPHb3
         PSl9udcXaQSCeIHOh1pf8xgsDAJNz8jU1aDr0gTOMBLb7Dpdp1VrkQm49SNOJDbBtdtk
         cWBaAbo4YD28CKEkT8yKB4+G2thH8jmRfAGjc2R8xgCRBUqahkxFNiF4OKyfu4+Nk3cf
         Gn5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=r94mbm90XkTv0UgwkkY/np1UXXC5ZSY70UeBTKRgfdQ=;
        fh=AhdQ6tTtJF2kOPthITTlZV7chYay8+0udzDeYtNtkyg=;
        b=YMAWWxR8l05W2Ahd3tEgqjQNA1gmxIIzgUCtuuzBtY0TkZybLpaWzw8XhAsp+Qv3Fr
         y9161t+1upGzY0x8MTQZ0Oj1o6kHll+ehMHw+OcA2eo1OiLMPyhl/yaWTFx5Z+c6bUBv
         ILOlsPnQ9kkHe7K2+OgYPx1nOYzRA/zOVTuhww0FaVWmbFf12fIl04+I8Zmub73xJnvL
         yANPw4F3OgjCNlTesj9HD+K1JOg4a6C4TtX20twcLDwYjkmmdAooQUIchhWuO+1H1gOU
         4cJlNYRLlN1+Bf0Wu9DKO8CiP9DO4emwCgBb9ybhNts0CkFN9WQn5AR153y0Mxm16FkG
         gI+w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.161.53 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723059466; x=1723664266;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r94mbm90XkTv0UgwkkY/np1UXXC5ZSY70UeBTKRgfdQ=;
        b=wJN8RsSCwgr/5R+cpeBUAUBHhqjAk2Bd3ZbIz2imsbcF6GWOAIQWTT5sN8tdrlTn1x
         qTou1Cw5ui0w2QcigpfDKOVtqXybesTsxSVCx07GHD/jwkwHtBT6ZOtkttTtP4iTo4j+
         A8WAc9Q7pFH7fCxO473ypDnOR2CmEMxwJjgPiHBIoOeBSnigbvPm2vD5y/yhEalYpD6b
         Swk8pzW1NpsXNp/fHcl54CBgzGh6eDjADkBiRINxLVO7QhWYPIslfl798hspaYfBFsUF
         8nqsIKDqDI5OVpR4w2iNKnkiabOAjitUZTxeOx/emOJmSm0ICIzJ4DCcxaINOgUrQiTi
         jBgQ==
X-Forwarded-Encrypted: i=2; AJvYcCXIHONwpJ9QGv0C64bwbtMM/GDx/qp/pIBOZ3S+VriETjWf+7GroJtUMDRsXmTBLr01JrA7gLzP7bMpE/T1OJSexM/FCpZfcw2G
X-Gm-Message-State: AOJu0YwWjUSfIgfc1OSX9yKPAcEUY820Ncr8ve4ly1Ov1rpmWFju1O0C
	QTbEKPPgM5IjLVryB9bFejfpLVtP1QMfHh7xqK5zelguE4ayjwcWgSpSh298aHk=
X-Google-Smtp-Source: AGHT+IHOuYj7X+jq2M6omnozYa2cxyoMpbk5IPULH8S127jOXSuBPI8Ei2DV7m+5hDfQQfJpNkHvfw==
X-Received: by 2002:a05:622a:4d3:b0:447:e1a4:6c9e with SMTP id d75a77b69052e-4518928603amr228790221cf.16.1723059466220;
        Wed, 07 Aug 2024 12:37:46 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:189e:b0:449:c35d:afa1 with SMTP id
 d75a77b69052e-451d10ef148ls3325341cf.0.-pod-prod-08-us; Wed, 07 Aug 2024
 12:37:45 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU6xbQqgGgrnR0glRHBKpzRpDUkt4LKeRhEHFT6IXh1ukURLB6mgtpDM0jyfassrv31ENoonTXb+mJ1omsj/Bh2oyXnxXTicdVFDqut
X-Received: by 2002:ac8:7f42:0:b0:44f:5e2c:1632 with SMTP id d75a77b69052e-451892860afmr229776731cf.17.1723059464839;
        Wed, 07 Aug 2024 12:37:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723059464; cv=none;
        d=google.com; s=arc-20160816;
        b=GZ8kDUJGMFKrFX1D1r5FAnSi9AAxxRou2TQO3AjHTT4iMvP/2wj4UZfHdFMOm9UHoD
         ZZmd0iO9wUXmvA7VpYr+KHEdEyb8mcREqCBx7I6UBc6urV+wJwfPLmBUqhlF93QXzKVH
         6Zlg/MWDgin32A6+fm2PCTRD9GJaKzmoVND/f6lftcI6OtN7Uzx88yisvDSjs/K5ThKZ
         Rj7oIgVV0bdHZLmz883/2+LK+r3HGx1y1abWYlZ6YAoO46yeZv6hTr2Elwxqs1Ougu2S
         xjWWx0vb2bjgvzkczukSlx1iuW8jWs62toa2D20SnI6HG0jyK+qZe/0kTZi0XBOO2tPi
         qi7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=zDMa2hIELY40sxkrkE2CUMyfre2k7NCTAABCdbcUia8=;
        fh=7g921vmD+C6VjQh77Dd6Juh5i8olvOnhzwu9mwWyUlk=;
        b=GyPFYtdfRwCQGy7LF0vb7n00DD8532FQl9QUymgIves2VSuPmB8nRTRc/spVoPH9lu
         Wbj3WsXjF/br66+PXFNiYsK541+Auk0Jo/jkgC/RvRhms2K52Q1FXZaHov+lnJirSsTU
         EBwW4ronChBC7SkVlSRd7Zhd7MwryU8bv8IUS9skeai0qp1QHK4460oylAbkdcwCjEhF
         TBivov2/X/zo59aiaos1FRRnLzhHlDVPtx4n+ofl8uoQL8p3K9p374/MUFE4gBZFXNWN
         f1WHipuLBo8UVmsX3slbg9XQr76Qi2Qb7nitRMzNWqvWVdXYkfSHn0zmKBV6cxEvolUU
         b33A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.161.53 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-451c87ffdc7si21825511cf.480.2024.08.07.12.37.44
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 12:37:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.161.53 as permitted sender) client-ip=209.85.161.53;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-369-6fc-fzI0OUCWW07WBpnwFQ-1; Wed,
 07 Aug 2024 15:37:42 -0400
X-MC-Unique: 6fc-fzI0OUCWW07WBpnwFQ-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2622A19560A6
	for <blinux-list@gapps.redhat.com>; Wed,  7 Aug 2024 19:37:42 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 2072019560AE; Wed,  7 Aug 2024 19:37:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1D7B919560A7
	for <blinux-list@redhat.com>; Wed,  7 Aug 2024 19:37:41 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 809361944B2C
	for <blinux-list@redhat.com>; Wed,  7 Aug 2024 19:37:41 +0000 (UTC)
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com
 [209.85.161.53]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-572-ZzHiEikuMZ-VFoCADFSzxg-1; Wed, 07 Aug 2024 15:37:38 -0400
X-MC-Unique: ZzHiEikuMZ-VFoCADFSzxg-1
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-5d5d4d07babso138233eaf.3
        for <blinux-list@redhat.com>; Wed, 07 Aug 2024 12:37:38 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV0RBUCXIEcVr7RKJ/qohLC2XFHMNNBE+I4VrbudUbQ913O3Dz/ri63kyT4OXPObi2DyfOpcrLRVATKthkDhZZeOJQ6DNeV
X-Received: by 2002:a05:6820:1688:b0:5d5:b226:2ff5 with SMTP id 006d021491bc7-5d645b04a9dmr21552910eaf.0.1723059457814;
        Wed, 07 Aug 2024 12:37:37 -0700 (PDT)
Received: from [192.168.4.28] (63-142-95-63-142-95-216.cpe.sparklight.net. [63.142.95.216])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5d808051a2fsm2637169eaf.3.2024.08.07.12.37.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Aug 2024 12:37:37 -0700 (PDT)
Message-ID: <8107ca73-f5e8-4bc5-9e83-2460c0cc4ddb@gmail.com>
Date: Wed, 7 Aug 2024 14:37:34 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Lios
To: Rastislav Kish <rastislav.kish@protonmail.com>, blinux-list@redhat.com
References: <302d6c88-edc0-f33e-bb93-311e82098da4@panix.com>
 <7efeda7f-aad6-46fe-b848-9bc1be473feb@gmail.com>
 <c20c8201-159a-6ca5-61e6-b2c349b18a66@panix.com>
 <2dfdde94-9d53-4fb1-b29a-308b0872dc8b@gmail.com>
 <37b6459d-957d-32b3-57cd-e08cc9101eaf@panix.com>
 <9233824c-dd04-40ff-acdf-fbb26c6e1d2c@gmail.com>
 <0048a573-8a71-4fe9-9445-07d463c69b69@protonmail.com>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <0048a573-8a71-4fe9-9445-07d463c69b69@protonmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative;
 boundary="------------Xbtrnn7tQcm2XoXZmyBhblZ0"
Content-Language: en-US
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jackson.rodney.1970@gmail.com designates 209.85.161.53 as permitted
 sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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
--------------Xbtrnn7tQcm2XoXZmyBhblZ0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

Rastislav

I logged into my linux mint machine and the version of LIOS is 2.8

Rodney

On 8/7/2024 06:05, 'Rastislav Kish' via blinux-list@redhat.com wrote:
>
> Hello,
> which distribution of LIOS are you using?
> These issues shouldn't be a big deal, LIOS has a bit incomplete=20
> implementation of the scanner protocol, but when this happened on my=20
> machine I could fix it in the code and I believe I reported the issues=20
> and my solutions back.
>
> Best regards
>
> Rastislav
>
> D=C5=88a 6. 8. 2024 o 3:48 rodney jackson nap=C3=ADsal(a):
>> I am having issues with Lios, I am hoping someone can help me figure thi=
s out.
>> Scanner I have: epson perfection v39 ii
>> When trying to run Lios to scan documents
>> Lios sees the scanner but I get the error below:
>> Error I get:
>> 	Scanner update list error Object has no attribute max_y
>> I have tried this on Accessible Coconut and Linux mint as well as Debian=
 Bookworm
>> all other 3^rd    party scanning software on these machines have no issu=
es with scanning with this scanner
>> Any help will be greatly appreciated.
>> Rodney
>>
>>
>>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--------------Xbtrnn7tQcm2XoXZmyBhblZ0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p>Rastislav</p>
    <p>I logged into my linux mint machine and the version of LIOS is
      2.8</p>
    <p>Rodney<br>
    </p>
    <div class=3D"moz-cite-prefix">On 8/7/2024 06:05, 'Rastislav Kish' via
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:blinux-list@redh=
at.com">blinux-list@redhat.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:0048a573-8a71-4fe9-9445-07d463c69b69@protonmail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
      <p>Hello,<br>
        which distribution of LIOS are you using?<br>
        These issues shouldn't be a big deal, LIOS has a bit incomplete
        implementation of the scanner protocol, but when this happened
        on my machine I could fix it in the code and I believe I
        reported the issues and my solutions back.<br>
        <br>
        Best regards<br>
        <br>
        Rastislav<br>
        <br>
      </p>
      <div class=3D"moz-cite-prefix">D=C5=88a 6. 8. 2024 o 3:48 rodney jack=
son
        nap=C3=ADsal(a):<br>
      </div>
      <blockquote type=3D"cite"
        cite=3D"mid:9233824c-dd04-40ff-acdf-fbb26c6e1d2c@gmail.com">
        <pre class=3D"western">I am having issues with Lios, I am hoping so=
meone can help me figure this out.
Scanner I have: epson perfection v39 ii
When trying to run Lios to scan documents
Lios sees the scanner but I get the error below:
Error I get:
	Scanner update list error Object has no attribute max_y
I have tried this on Accessible Coconut and Linux mint as well as Debian Bo=
okworm
all other 3<sup>rd</sup> party scanning software on these machines have no =
issues with scanning with this scanner
Any help will be greatly appreciated.
Rodney



</pre>
      </blockquote>
    </blockquote>
  </body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--------------Xbtrnn7tQcm2XoXZmyBhblZ0--

