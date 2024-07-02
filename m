Return-Path: <blinux-list+bncBCV3N6GOXMCRBC7CRW2AMGQEEUN424I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 147A191ED65
	for <lists+blinux-list@lfdr.de>; Tue,  2 Jul 2024 05:16:30 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-43e39de4d18sf9945371cf.1
        for <lists+blinux-list@lfdr.de>; Mon, 01 Jul 2024 20:16:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719890189; cv=pass;
        d=google.com; s=arc-20160816;
        b=jUDKPS+pV7NSyK4UPy4tEM1XvI6ZuQ1tqAJlV+5fW8Tf4vAL4/GGnV0RsG9RikVoJ5
         ZcDn33bMk7IbyL+0hXFdqf2LJlPL/XOvQcpD1a4wR4oWv8YT5/NrLU4lcQRCor3hln0U
         cjDOE04MK/IN4v+n3mLoTkAPlyhK9+VVHLNf7nMf6Npd970fUjoVyxSX8+ITDzGBUVEj
         Q7w3/f2qaY2O3utDbZIrmpsPUlyEMIzkaYwdxBB9y8BLuj13rI0vLl0OfBz0m4HHPs9y
         Qjp+aOh++Q5d33dC6RAPH4MpP3u6xqcVZMU3MvH7gYZhkPdK0d0NGrJib6eELHW5tOMC
         x7gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=GEaINIPY0OAlavLtI0ei9VV7LM/BiV5O1Jv2bVnzhdY=;
        fh=0G9zUDgzzt4wSCqNHZZdqmJqb8tkjtXiBk4WgYRJL9g=;
        b=TO7Lvukn49iJ8l64mWBg83CjcEdw2Xowv2YqYnVKZXAUX26ETB9QRMGf8P4z5L58Mt
         A0RkevhFMyRPM6ZH+HHi8i1C8Wzh0HowEsGPfBeF/sUWWsKHutYdNRfC8bpHGbnjfsrW
         zKbnyz+6Mm3NOU3j153xk+rspSZJcvgIr+OFfK9ZrMJo96Sj5g89rqYGFXTwX27RrKBe
         tKFMeF3th/rVAq2r3UKh9I0efPlrjlA44kb22/3pN+fAXaYyDC+3x12RkNKiDgcIHXIM
         Of2Txg+ffCX17AGZxWqpKW6sQMumH876YKQYSV2qhBvs+5EnSyGsclwv6gxV79VbI9zT
         59+g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719890189; x=1720494989;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GEaINIPY0OAlavLtI0ei9VV7LM/BiV5O1Jv2bVnzhdY=;
        b=fSFZ0xuGoH7gEAWi/opSQ/6rNXsduSW3Yl18QcWniBSjFIkiO/C83V6DqegRg6IajH
         59zxgmsvcIsjePOxkDFxMqAl8lJUhdUhupWHHAumrqYrii4grZRgbv22O+QfTbSZ4ZCm
         R5K3eE4/V6eJ9E3Yvr+L/QYjyYLNBRhCwp1EMaWzwyLtP2KEJ7viQ1BWmpgba8pozdEl
         UwIZxiv8dPXUQ9Wjg4ZdZ+TVzLKTlcnCSinExRmxfIwltTKBqIHKMJAGmz+3DHrUGLk0
         tinUX4NAfU9hoRim92C4ZSswnsl1PaJ0EmXzFo4rmyP2HlPtFza8e5Fvch0Vtkz6/3TH
         UkVg==
X-Forwarded-Encrypted: i=2; AJvYcCVPqONyv1lW4edKJSIk3BJMCbleDOBYk4RN+AP1O5lVJ1QIf2HTL6DvDyCfXAQsOHHOKx6zoEBzAgpM/JEZM86j9y11lzjUxLPE
X-Gm-Message-State: AOJu0Yyq7xi5op5LHjoFKSD1uxPE/K6rPqXKM04lTEkOMSRPQvDVRVKL
	1BdDiH8lqPzet3gv1Kiah3xLaHNsDUdO85+rxJMNdtpHxTNtjfypDYBYZTDKVog=
X-Google-Smtp-Source: AGHT+IE/RuabIW3BiwLIFBDh6oQ6rNh75wxgScfPCzcI63mPulCF/uDT4V0e8x4NBD8bvPan0knSpg==
X-Received: by 2002:a05:622a:8f:b0:441:37b:cd7a with SMTP id d75a77b69052e-44662dd3cd6mr93224911cf.3.1719890188696;
        Mon, 01 Jul 2024 20:16:28 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1786:b0:444:e88c:beed with SMTP id
 d75a77b69052e-44652a1724als53935231cf.2.-pod-prod-02-us; Mon, 01 Jul 2024
 20:16:27 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXQdJ3fJXQ5HOqxAEySvb6+HJ5t6vsYEBnhigyp890vr83D8apVezbfFehgBsxSsLJMNN2jPoHP4ru9rp0bl2VT0DGzbmVxtD5rN9gY
X-Received: by 2002:ac8:5701:0:b0:444:f3ec:4427 with SMTP id d75a77b69052e-44662e750ffmr93388921cf.52.1719890187417;
        Mon, 01 Jul 2024 20:16:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719890187; cv=none;
        d=google.com; s=arc-20160816;
        b=dfC0pWTnXljjw82SSKDmOvw0r2dfMynBO+6MVIZIsiGdHWckVjOzzIztuZM6v6SoNq
         mqw+piFbUFjQ/xnOdd5w1CExp4cQCENHL+eZZxPTh7DPAldHyUHCpVo4D3+Ri88nV531
         DHpX8pUwi+ncDwshJJC6jcAdnovbMtfo5I4gDMVtaZOjMN4nALOHNwX/uRWKsH6Aza4+
         8f+M0QKiTf/dd37wcJCnH9oo4XUx7fSrFvf3mIhLRwa2k50QsUiZi4dI7eChOhknCCAD
         nozbolRGqsXqlv+B3/WKWI90cT6LqryVbEo6bToCyIWUhIccP/uieS2v22uIFd4XlWxs
         olpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=kNNXqanSiJ5oglEA0UxkGYYYNBlB0St/vQYa+qWQ5lk=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=bbgDs7rBIcrBTgRpDsyrlC4uwnVgT9e/ON7/n8/IlQRt44ZCYezLGwuoJaFAhK2KVT
         4sCwlFcHuazQ7/dRazVlYgW/biVXcXddDlh0n0skr8mpo3aXmJjKIoZ04zW5bI9UXoOu
         fb1DwUFgvvJAyZ9SAezU0c7KX10mLalbYw9kqdJb4lrf9B3t8yXh1miuklFdxOm0NtbU
         l8N2otOkM0e0msSwhPNZUgvohebSRIq7acop8pC1BPxvTPMZQt0zC5LdhSMDwGzPRDSL
         SW2ZTX77fRYNVDO5sJz4c8cRb3VeqirWC2GskP/oVvyu7ExkQni6c9hDSliIMtZ+k55s
         M84A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-446514ed108si92741271cf.788.2024.07.01.20.16.27
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 20:16:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) client-ip=212.227.17.20;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-694-HxQcWNRnM9awy0vWxdP27w-1; Mon,
 01 Jul 2024 23:16:24 -0400
X-MC-Unique: HxQcWNRnM9awy0vWxdP27w-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 149C91944B3B
	for <blinux-list@gapps.redhat.com>; Tue,  2 Jul 2024 03:16:24 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 048681955E80; Tue,  2 Jul 2024 03:16:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F40621956089
	for <blinux-list@redhat.com>; Tue,  2 Jul 2024 03:16:23 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 70E0E1956088
	for <blinux-list@redhat.com>; Tue,  2 Jul 2024 03:16:23 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-669-DR2_TKQXMemJXPjQhLZdxw-1; Mon,
 01 Jul 2024 23:16:21 -0400
X-MC-Unique: DR2_TKQXMemJXPjQhLZdxw-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.54.145.217]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MyKDU-1sEeIJ1rTA-00x9VF for
 <blinux-list@redhat.com>; Tue, 02 Jul 2024 05:16:19 +0200
Message-ID: <0c850d51-1b56-46c0-aa43-4d3c2ad8bdd3@gmx.it>
Date: Mon, 1 Jul 2024 23:16:18 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Fedora 40 workstation status
To: blinux-list@redhat.com
References: <99dd9ae2-6af5-f6ee-3387-6aa40862bdc0@panix.com>
 <8062e3e7-7230-4351-a094-03fe7b4bea84@jasonjgw.net>
 <d0c75ec5-6bcd-e1d8-4c40-83070dc1c7da@panix.com>
 <5e90b809-1877-881a-9c59-2f6d94d0084c@hubert-humphrey.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <5e90b809-1877-881a-9c59-2f6d94d0084c@hubert-humphrey.com>
X-Provags-ID: V03:K1:swyQaI8cyzIsRsFH5TDjHyxXZfyLZvyZkfi0VcMtSqYw2oYynWM
 /brDpvW0MujUTCTRxRsWyqrCI2VY4irOBWfAePvvZTVdFM8o6NIpC+XIPY4K0X8dTThd0/D
 R3qgYWwbH8moejEfsB+RfOskOJJ+dHGv7mJNWn9v8lWf2FfNCR8imQALaXR0ArJDYmTW1wq
 vdOi2iaYWsKB6Jh+8DLtA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:WitVKlajjCQ=;aRzoJ9W9+KaWzdJdXuwGAijXNKB
 dpcN+MeWuMLoTVguivcIgcv7t+ZHR4BtAwXa6PTyDh6qR3KKxI48W/nzwwC8GmUVB542chkAA
 jFNVBc4IPP+E/Aqy/Ibe2H73sp6b4Rvr4bHp7Gh2bb6nVVlIIIQmbxQACbHt9hhDPGjQFoQ67
 2ersCux11NcaF1Ptw2MHjWhFYPQc7KtHh8urNtvMowkwbAr4MTuwhlXN2OFNeegYwiBNRpihH
 WpzPZqCdOBwuuB3VgP41TI7u5viEhPaTII+MS6lyDb8b4a4EA6IWyMYsBK/Ibwp8LgcITOpQq
 MYPFWh9SeJsC3JdoGHwJzLuQMsp8uRGbvoP4tObINZkSg4qt6SfzUE31XzxMwizBjMGoWMBhN
 qsfkd5QAbcdwXGPcb9Ylp5BgkXZNs/7jUwQ4aK72AF3H05JH7FXZCb5GhP+AgEJiMK2Lz3Ygr
 VT6v49jQigzylvffLv3YHWyPJC6WyBq1vv1Mjzhm2AqZdn241ARPEb9Tx2wbdOnQxyxUe0kC0
 Gkc7K6UPwJQORQ7duoWOq32gzYHTl4Y1s64LWO//Bwfwdzc/6E4/YMxW2udCOyiKVKe2dhrbX
 CEa4J3DJDNgFlKdTqWhRhydIC+dmRiBE2nGnY95ZhhYpWFTU2gV88CncnaVJyfJ9sGNJKmVJ0
 6BJezFNrQKAE0Dn6DVYuoxpkYb5V6eotr/gpYONulMrSZbHMZ1A7gh4ITwaRFUw+PJnIZbzOA
 GXnnKGsauWrKX2yhd7gx2nAqp+fk7a0WDFafcyIuQ93IjM/fd3Eyx93r3o12Avcs+5d6SkuhF
 7Oa7sybY6mXkOnDJSQl6MrE1Vkc0NlbnrEfq72y1yxqIo=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Original-From: Kyle <kyle@gmx.it>
Reply-To: Kyle <kyle@gmx.it>
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

Well, I didn't use Fedora while I ran Debian, then Ubuntu, then Arch. I
guess that was at least 9 years. Then again, I didn't switch off Fedora
due to a lack of accessibility. In fact, Fedora has been one of the most
accessible distros I've used, with the possible exception of Ubuntu,
speaking from an installer standpoint, although I have heard that Ubuntu
had some installer problems fairly recently. I did put Ubuntu on one
client's laptop a few years back and had no problems installing or
running it, and then I put Fedora on another client's laptop about a
year or so later and also had no problems with the installation or even
a test run of various software applications. I have successfully run
Fedora Linux on the machine where I write this message since 35 though,
so although there was not a problem installing 35, I have not tried
newer installers, so there may be some problems there. Add to this the
fact that for some time, it wasn't making any sound in a VM and I didn't
want to reinstall over my bare metal installation that I use every day.
In any case, I have no idea where this article comes from talking about
Fedora not being accessible for 9 years. That just seems odd to me. I
can however see where there may be problems installing it, as I just
haven't tested that recently. Once I got it up and running using the
installer that at that time was near 100% with Orca, I just updated and
upgraded, never using the newer Anaconda installer. I should at some
point grab a 40 Workstation and pop it into a VM to see whether it talks
now, a project for this weekend perhaps.

~Kyle

Imetumwa kutoka vidole vyangu

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

