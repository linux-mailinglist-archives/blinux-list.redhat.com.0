Return-Path: <blinux-list+bncBCM2V5WE3MDBBHVKZW2QMGQEXOSDALI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mail.lfdr.de (Postfix) with ESMTPS id E24BC94A69C
	for <lists+blinux-list@lfdr.de>; Wed,  7 Aug 2024 13:06:09 +0200 (CEST)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-7094db8ec7dsf1726144a34.0
        for <lists+blinux-list@lfdr.de>; Wed, 07 Aug 2024 04:06:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723028768; cv=pass;
        d=google.com; s=arc-20160816;
        b=AvqKzb5R07wbfyo3pKEUBxPy/ZuljXTjYBXN68XXT4xrvL/jDc6rA9hNapsFZ9+hvX
         GxYKBc3GrJrH/wAU5thoK6aeqFpJuOcEDUweswsg+pHd0tF2pEKeHlRQsuGV3epsq6s1
         fTwSBRxOSR511RGrj0zc1y7/Gn3zkND51bnLbmPOr1gB/7rAnRAJ6ffUO7MpbLT/Efei
         QP3/1k0URexwLv4hHt1efEW9NpJxYRUNgLUxeF0kdRKxmXLVn1hl8MFKwCtS9tCJeejT
         OeTwh6NTWp6TqKTsXOmX2PWhaHY74AeHd4XQp57dS+7ysBWDkF3/9OMB1slSktiDXxWW
         en6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:feedback-id
         :references:in-reply-to:message-id:subject:from:to:date:delivered-to;
        bh=gPx/97ND2FYkROmdoEuqMyoLd8eVjMLmu84L5fb0g1c=;
        fh=vt3QQHEsh4mrLoN2rc9MJFmNeyLPFj6qQKqfGsKyeIc=;
        b=aucFy75LhqnwN7seaJFogI+2wCWy0CDWYxPWrR7eRy9rtTUxQj4PEfUIHc961u6ici
         lzGQgsh3UgGfCEHMhVS8Izx0av/kU8FW2v1st9gEoEsEN9QhN2yUtEJVImslnzoEI21F
         Wn+bB3q+d+sACJl1SLEr2H5sMsuiEDP+EB8suADgiBZBrkH3HFzuWpGEIg/eUNwKlNHF
         rrWIGkgg9gABwF6G+XeJMPgbyBTHat0slbpOqXRDlJ2aRLbXf+DKmuICbGXJgwZXF6Qm
         7bzgQX4IRWt7HwgpRMzfovNUWNW+vJGZjXO1tBHGjY2GwoSNk21qjGbalcmDqjpdf2b8
         WssA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.21 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723028768; x=1723633568;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :feedback-id:references:in-reply-to:message-id:subject:from:to:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gPx/97ND2FYkROmdoEuqMyoLd8eVjMLmu84L5fb0g1c=;
        b=QUJWeZHOTplKYMyW2iOTZ62YQ1jg4TZWjzcpu5uQELAahdhW4GlPNgMeJkE6L7dIdU
         0kFcn7CaXnpiU7HmdBHWPOiXCwjqVgjysCjiXOiXasYVJk3aWqKLOvAKKCFKz9ZYgGYj
         ducekxtineTAGChTNRZO4trKGN3ZC7SEjM2mYfPLPPHRA3M+Hp9p4QbkaOiVyepRSPLT
         Fp3KbPD4bYmW0eBnjLfpF1R+s5ESD+M/ksMUyyKzQoAz4miMWLC5Xh47Fk2ohtsrkPd4
         hgZl7V7zvGbfPwLyrogCuqw5hC4TkGJph4hzAjfQufx9YsFu8sig+O0Xt9JpOd6NQ4tK
         QGHg==
X-Forwarded-Encrypted: i=2; AJvYcCVUkMoTrRZFGPAWoGSREvIY7SqFXfjQ65WxyUhSX3vjNO4m2zDPUadnFnGyDwMnarFtJz8nMd8i/f2VECBMrMgp41T4Y/EvYvnR
X-Gm-Message-State: AOJu0Yz3qraEGXsiEdntfKwA3GW8FiPDPJCB3F8QhTbLsTPiPvOsG45u
	I6E8LoEJ4gOCyM2dWh6gT9Hks0fwnSVGhzmC5GA4kVUR2kQ+iymCE1MyYs5l2Jo=
X-Google-Smtp-Source: AGHT+IHUYp2o4usyyVW818VyaH2nP6F+tviNJq2vxyRInZc/eRErcfGX0w3VAXiXj/9bmCAKONxs/w==
X-Received: by 2002:a05:6830:2808:b0:708:f88a:e3e7 with SMTP id 46e09a7af769-709b997d85emr23666245a34.34.1723028767920;
        Wed, 07 Aug 2024 04:06:07 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:c42:b0:6b9:82f9:a8bc with SMTP id
 6a1803df08f44-6bba33ff4aals84549606d6.1.-pod-prod-09-us; Wed, 07 Aug 2024
 04:06:06 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWFwaxqTH9l3bJuHec0zTdCCR9V2n9ewQ1Bhz6WfPhI2++PaHjSfktH21Wvyq5IbFgz1jtyF3/0h4mOAtDXbTbG06UNW85jAwTFRaK2
X-Received: by 2002:a05:6102:a4f:b0:492:773e:a362 with SMTP id ada2fe7eead31-4945bf329e1mr23359706137.25.1723028766233;
        Wed, 07 Aug 2024 04:06:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723028766; cv=none;
        d=google.com; s=arc-20160816;
        b=yM9Fb9ZQHWQiEr85NDf2H9WzO3SEFAlfhvEizVoyLY5HRaun5YLACD/+xXuyvHqY+V
         vqO+uRYLDv1gvI8+MUW/nPU7jBt3kYrrRriYPTwsC9JbrNnoVq+Ufyly4j3B20zstUDQ
         BveS2B6pRr1mfM13vXH2aIeoDSoUI/2UY6MdJ0MVSGfiSA6q8aVRVmug12RNaHgsLD+Z
         gYhiw+SWyYwztjyxiq0+jsCY3cYTV/RoAqfAcgjzgAUHfmehaNEZYEKNTFNFdedaNlo9
         iQ007TLlLi3IpMP/x03XFiiweb1XVLuf03pEivkKdrvoAPTnHHpdLrzfq2mNzUH91gzd
         aFqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:delivered-to;
        bh=/dEfXSaezvhHTgcK75Dq+f9xZTut1DL41hWSWGih+mM=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=CkoN7ehP3KlRL8yeFhfA78GDeGokPCHJ6v6j1EdyADXUpI5twdUsTNTRVR2lWR/gYb
         INQRUBV341m9nK2Qqg18/y2ZjqYvuM/zwI1rAyBhIiz+ETAmDTNRuIV4A4Vgee3ewm67
         DgUSxEXOPEX7kfrs0Cx0EkdzvaBq3DmblIebayOfgVZLdY5Njzil6szD7Qjv8KQ6j25w
         PDdaUSs7b1WBTs7B5GsLirEcURKy+rb1W47NOA0Jv3/aJgBSHBXREjetZ0l5izbbni11
         yxbTg9DpfTNvY+x3bQCaiZ4BvQDnLulF8gqjpB5KezGma3l3CtFn4QKQw1aPBWz2c00E
         1wwA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.21 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id ada2fe7eead31-4945dc299edsi2443739137.723.2024.08.07.04.06.06
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 04:06:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.21 as permitted sender) client-ip=185.70.43.21;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-646-R2tA_qmRP3qy3yRLUHRhLg-1; Wed,
 07 Aug 2024 07:06:04 -0400
X-MC-Unique: R2tA_qmRP3qy3yRLUHRhLg-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1BBE6196CDD0
	for <blinux-list@gapps.redhat.com>; Wed,  7 Aug 2024 11:06:04 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 176A2300019A; Wed,  7 Aug 2024 11:06:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 143A83000197
	for <blinux-list@redhat.com>; Wed,  7 Aug 2024 11:06:03 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 92AB91944AAE
	for <blinux-list@redhat.com>; Wed,  7 Aug 2024 11:06:03 +0000 (UTC)
Received: from mail-4321.protonmail.ch (mail-4321.protonmail.ch
 [185.70.43.21]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-509-d9ZaTlz0PbuPd9p05sEVoA-1; Wed, 07 Aug 2024 07:06:00 -0400
X-MC-Unique: d9ZaTlz0PbuPd9p05sEVoA-1
Date: Wed, 07 Aug 2024 11:05:49 +0000
To: blinux-list@redhat.com
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: Lios
Message-ID: <0048a573-8a71-4fe9-9445-07d463c69b69@protonmail.com>
In-Reply-To: <9233824c-dd04-40ff-acdf-fbb26c6e1d2c@gmail.com>
References: <302d6c88-edc0-f33e-bb93-311e82098da4@panix.com> <7efeda7f-aad6-46fe-b848-9bc1be473feb@gmail.com> <c20c8201-159a-6ca5-61e6-b2c349b18a66@panix.com> <2dfdde94-9d53-4fb1-b29a-308b0872dc8b@gmail.com> <37b6459d-957d-32b3-57cd-e08cc9101eaf@panix.com> <9233824c-dd04-40ff-acdf-fbb26c6e1d2c@gmail.com>
Feedback-ID: 26663242:user:proton
X-Pm-Message-ID: 0b86dd7452907ea47035cf9ba6844dd6d2b0cf0d
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: multipart/alternative;
 boundary="b1_VpUZG5SL3BL19W6tcenVVgiqEnGi0eEYH1W3Lx5M4Q"
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.43.21 as permitted
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

This is a multi-part message in MIME format.
--b1_VpUZG5SL3BL19W6tcenVVgiqEnGi0eEYH1W3Lx5M4Q
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,
which distribution of LIOS are you using?
These issues shouldn't be a big deal, LIOS has a bit incomplete implementat=
ion of the scanner protocol, but when this happened on my machine I could f=
ix it in the code and I believe I reported the issues and my solutions back=
.

Best regards

Rastislav

D=C5=88a 6. 8. 2024 o 3:48 rodney jackson nap=C3=ADsal(a):

> I am having issues with Lios, I am hoping someone can help me figure this=
 out.
> Scanner I have: epson perfection v39 ii
> When trying to run Lios to scan documents
> Lios sees the scanner but I get the error below:
> Error I get:
>	Scanner update list error Object has no attribute max_y
> I have tried this on Accessible Coconut and Linux mint as well as Debian =
Bookworm
> all other 3
>
> rd
>
> party scanning software on these machines have no issues with scanning wi=
th this scanner
> Any help will be greatly appreciated.
> Rodney
>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--b1_VpUZG5SL3BL19W6tcenVVgiqEnGi0eEYH1W3Lx5M4Q
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p>Hello,<br>
      which distribution of LIOS are you using?<br>
      These issues shouldn't be a big deal, LIOS has a bit incomplete
      implementation of the scanner protocol, but when this happened on
      my machine I could fix it in the code and I believe I reported the
      issues and my solutions back.<br>
      <br>
      Best regards<br>
      <br>
      Rastislav<br>
      <br>
    </p>
    <div class=3D"moz-cite-prefix">D=C5=88a 6. 8. 2024 o 3:48 rodney jackso=
n
      nap=C3=ADsal(a):<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:9233824c-dd04-40ff-acdf-fbb26c6e1d2c@gmail.com">
      <pre class=3D"western">I am having issues with Lios, I am hoping some=
one can help me figure this out.
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
      To unsubscribe from this group and stop receiving emails from it,
      send an email to <a
        href=3D"mailto:blinux-list+unsubscribe@redhat.com"
        moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">blinux-lis=
t+unsubscribe@redhat.com</a>.<br>
    </blockquote>
  </body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--b1_VpUZG5SL3BL19W6tcenVVgiqEnGi0eEYH1W3Lx5M4Q--

