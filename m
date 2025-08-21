Return-Path: <blinux-list+bncBCAJTHUAX4NBBVEITXCQMGQE4GVTXDA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFB1B2FFA1
	for <lists+blinux-list@lfdr.de>; Thu, 21 Aug 2025 18:07:52 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70d7c7e972fsf17063526d6.3
        for <lists+blinux-list@lfdr.de>; Thu, 21 Aug 2025 09:07:52 -0700 (PDT)
ARC-Seal: i=4; a=rsa-sha256; t=1755792471; cv=pass;
        d=google.com; s=arc-20240605;
        b=TZJirwrIOZst5vQm5VQ9zfNmyEKPKuLCMoDt+VF5obxjQ08OL7j2rn/m72/yKqiZW5
         WlWP6HQ4I2xOa3sllbtb4/tCBZTHXhTgX3fM8XQkPTsSCV7qHZCeA1sJTuD5fekF6m/S
         /YleIRBR7A5JlXEjrqFvF4yhWd7TWLBsJUslgbZqa4NO1HTTYPs62Dn1sa/3b9Gc2drE
         JWsgRRFnuCVh48+540wZXkoSJpiLjwj2KI486eHXgcjJ+h4/+DQJ83a70boD8ATHgxmq
         TQtuhdQu9Lfxqnlvr3nqS0f/tfU6NF7Kr9FP2C7KJ9FVmOSRKG3umekBP5tRGLxrsv96
         dtEg==
ARC-Message-Signature: i=4; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=mR9JRlZYmJOEOiDkwFh/XgxOt8u3z3dWAqbCeZ8DKmI=;
        fh=BAIqPeoGjn8qgkKnVAmNDrDZrRbLnvQDkAqgOm2pUa4=;
        b=f1LU48FiPQmLdg72RWtAgNyATwDDTk3FjBkDZk4Ci/SOY38FqZjZGKahljIdalEQPa
         +fP1LH4+mB8bWTtakWqlZ/yGrkQfV4JNdL7RWeGq8+8WOZX0+YIWL3JjPFyIxkIe7dOP
         rLlNyzbG/58Mcp3l7/22cKcYwZfZDzy8yTk/WpX9r2aUJMT1AUkKeIE925h35fQLwoGW
         gthWCnH5kWmVI5ytSsMB9SF3/DIq0np8ADiapJFTdEgNXjNWnWni4ORcWvGM9NkoQtoj
         UKRtxR+hATLe3SfCF4K+d3T0db7dWATHj4M4Ua+/DJIsXfFoHyeDz9I1yKBXLiqYnI2n
         0RNw==;
        darn=lfdr.de
ARC-Authentication-Results: i=4; mx.google.com;
       dkim=pass header.i=@crosslink.net header.s=zoho header.b=SmW7l6bh;
       arc=pass (i=2 spf=pass spfdomain=crosslink.net dkim=pass dkdomain=crosslink.net dmarc=pass fromdomain=crosslink.net);
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 136.143.188.14 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755792471; x=1756397271;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mR9JRlZYmJOEOiDkwFh/XgxOt8u3z3dWAqbCeZ8DKmI=;
        b=C5BU1GOCG7gYNzrmzBZEhDkwLZmIGa+/Qy9tyksABdDtxS9C88nyMM/AlP2Y4PGqYo
         4qr3wYfPdAsOhNItZvcoqU0+WkasQa1wj5PeLS7jLJh/j9T3wkEFOKPd56Ge6ABUGViF
         WpnPCbILvJzE2CuPyhIFch3pQC53EyVURoPRICL/EbZ+L9FkYccSICcIb1foTOD4ilI4
         pPhBRtUwL0uiOEIHqzgfAOmZMosH5aoLmfms+XOlkm28YEJhHN6cMDtu/MBFs2HCXMSJ
         5E7qyRfVe8jn9Z5yfzofT0DVWpPMW+bDBmNGl2lWuI0afRW050AmdZM5G5OrwU6tBwde
         llAQ==
X-Forwarded-Encrypted: i=4; AJvYcCWAWSO8LL7rSS3mbFW2k0uVQqz8wONmfFfcQ3gauag6aqMrKiz81p62rWfltaLRo+0WZKkJ5w==@lfdr.de
X-Gm-Message-State: AOJu0YzuuOSuO9UzXdxYDDQMqE8WPdUnNlv9bDXB+g3sP5BnpSfcKoJ/
	Y4sAd4V50VV2Kaw5CuWr9BKyJJO9Kt9/ehOAQUHVrZopsaCvwtjDJoHt2pM4hJ8A4A8=
X-Google-Smtp-Source: AGHT+IGhMwZNbqyHZxQSiG8Z0qufLzmy0TSb4tNbz6tTUo1COQVLgxVNHgVdWYKJ9l25avUe436wPA==
X-Received: by 2002:ad4:5d6a:0:b0:70d:95a9:6042 with SMTP id 6a1803df08f44-70d972fa85dmr452136d6.29.1755792468776;
        Thu, 21 Aug 2025 09:07:48 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZfszoOXttrAn21eukv7XMJrgNUd5jYB4Cfm0Bsh1T0tJQ==
Received: by 2002:a05:6214:19e7:b0:70b:acc1:ba4f with SMTP id
 6a1803df08f44-70d85c82980ls18314076d6.1.-pod-prod-08-us; Thu, 21 Aug 2025
 09:07:47 -0700 (PDT)
X-Forwarded-Encrypted: i=4; AJvYcCXO8OgvACi0AYPNiqmUZ3Cbz3puDYFnB2mwxlQztSTeYQsX//0ArnUAMKQ93IXWGeTISUdN0kirQohTMw==@gapps.redhat.com
X-Received: by 2002:a05:6214:4114:b0:70d:93d9:6c19 with SMTP id 6a1803df08f44-70d9728b91emr489596d6.17.1755792467258;
        Thu, 21 Aug 2025 09:07:47 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1755792467; cv=pass;
        d=google.com; s=arc-20240605;
        b=Ah9uV7Ai2d8SQHZLTT04v6I7ADy7myBBjvkptEx7QM84OKrZvGWiKMFHfljZSJr7A9
         WSqmhOMblIbr1TR/CqhK5nS2/tjJHLD9ZSiOoXaot5i2al0HhJ+pDd0ZkDcMbPd4H08g
         jHXbyHGC0qDsh5leYizTy1WQbkhjs0ZZeDtYvjcT+2lKj50RqP3ul/39FpZe8P0cDCP3
         jqkyqRu6b6Dslo4yxiLfz1Q4e7Qhh1bV/OVWmR590MtjgzNnfniV6zZxoehG8hJq6ld3
         C0XRcXDnwMNIAqQNlAMYHgPhHVbZOSWLie8TzKW24sya6aD3+2kY74TvOROmh52We7MP
         OSIw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:delivered-to;
        bh=EOXNtlIFHgedUCAaPuTsWaFznxzllRFlaIoiJ3H9/GM=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=hjyKYvhHyDirV6yASB6Le2mm4vJrvL7Am+uGkDacyUT7AQ/f3C92u1+MBw7zDoRW+c
         nTQGflXUhWlF6PV267WWCseK34mkKsNB5yziVpOkUdmiS4DBf4/1mFRSkbac/nDkBnvg
         htyHfNJ/CC5mVOjOsCUUdSZEEAAjpsqiv7iOTsPUU27eK1MMV1IWDAhmlmPra3qMRgml
         0/Q3XrTK6g7E5P0hpmVHqn5EYAQiNlcOeBvj9l/CaTuZHOf16QPZcylpO7a3t644gMUm
         plnbw215lue5Y2YzCNdyRKCSJ1tnd6yPncJHLOT15dCn5UV39gttdzwjWowV27dHHE/h
         6O8Q==;
        dara=google.com
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@crosslink.net header.s=zoho header.b=SmW7l6bh;
       arc=pass (i=2 spf=pass spfdomain=crosslink.net dkim=pass dkdomain=crosslink.net dmarc=pass fromdomain=crosslink.net);
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 136.143.188.14 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 6a1803df08f44-70ba92c12b6si58978746d6.345.2025.08.21.09.07.47
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 09:07:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of cstrobel@crosslink.net designates 136.143.188.14 as permitted sender) client-ip=136.143.188.14;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-478-sh5cuQa3PPWDQTWGKllLcA-1; Thu,
 21 Aug 2025 12:07:40 -0400
X-MC-Unique: sh5cuQa3PPWDQTWGKllLcA-1
X-Mimecast-MFC-AGG-ID: sh5cuQa3PPWDQTWGKllLcA_1755792459
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C0E2818002D0
	for <blinux-list@gapps.redhat.com>; Thu, 21 Aug 2025 16:07:39 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id B8F3C197768C; Thu, 21 Aug 2025 16:07:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B633B1955F24
	for <blinux-list@redhat.com>; Thu, 21 Aug 2025 16:07:39 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 35702180024A
	for <blinux-list@redhat.com>; Thu, 21 Aug 2025 16:07:39 +0000 (UTC)
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1755792458;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=EOXNtlIFHgedUCAaPuTsWaFznxzllRFlaIoiJ3H9/GM=;
	b=GJ5Pdt0Lu7qVaqGx5avyzNktDedo38RKCPFAfSHu/mb7Yo+hPzIBwDz5D0oLAVZmb1L9g8
	/RazV58mzniLOh1q9wf4utqwwDdfSl1DNU1EL4FgfHESL1uBAg9Frssov2teZoRRFO0JnB
	VAsJR1mJR6Xo6fscTb2m0QUuw9EVCJzXuIaHXqYpEP4ORwKsL+p3nHXD8iS4C2Q7xXq+on
	zz7BePyQPnCXyfIOpYMUUSqqE7wCDoFj6cqMiug1efwjI/JuaZ2Z5gz4tQ/lBAI9rdr+NI
	knovRStwkaJQG8kqwn/zgcHPVossMXeHLjiknHj7gBki7/dCcTv1WaYdlB9xRg==
ARC-Seal: i=2; s=201903; d=dkim.mimecast.com; t=1755792458; a=rsa-sha256;
	cv=pass;
	b=CGPQK39xo/tIu64Inwvu8aYFVW4+lZvv/I+wM42SmzR14jcn8FaUSNr2SzlLViU4klLQfV
	mf89pA8dfWRSt5hl5ky5EJ/ERW1Yk4YjrRRgVVLdUk57ZjTe0Ky1xHm4umsfYeCcHv+hld
	TOgFA3iQrFB8n0iI8v3+6pU2t3pRXUPayhYFDlVYfIiTrY9dUWKti9YyzUlfK3rfeNtIUc
	ZGr5sk4kZIELqvVIn2jnSjOMh8jkjxDbix65SZetCsp4njEhtrtRLguOXTHkexxb1cCGF1
	oS2YFZrW30q/YK4qwRz7uaZl8S9zAryup9lMcVxVf0mIgWAKO9H5fUIg+lPn0g==
ARC-Authentication-Results: i=2;
	relay.mimecast.com;
	dkim=pass header.d=crosslink.net header.s=zoho header.b=SmW7l6bh;
	arc=pass ("zohomail.com:s=zohoarc:i=1");
	dmarc=pass (policy=quarantine) header.from=crosslink.net;
	spf=pass (relay.mimecast.com: domain of cstrobel@crosslink.net designates 136.143.188.14 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com
 [136.143.188.14]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-564-2PWW9XEuMfafKxPrG4tkPw-1; Thu, 21 Aug 2025 12:07:36 -0400
X-MC-Unique: 2PWW9XEuMfafKxPrG4tkPw-1
X-Mimecast-MFC-AGG-ID: 2PWW9XEuMfafKxPrG4tkPw_1755792455
ARC-Seal: i=1; a=rsa-sha256; t=1755792393; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=mkVRlJKd1UgoDfUsjFUPAW18cM2ZEJBIDRwwlYuZG9XEo5X9QlvVxQgmp90MxG7lTH2ZVmU+nc+vsv7ZMF45R7AK/py0ka0/3STLUxlPhDUjWo2+hr6xrFud0NCVMuRcqE1rRCGI7XGabSNZPBejRlEcDiSCGPuAAQVvwJK6m5E=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1755792393; h=Content-Type:Content-Transfer-Encoding:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=EOXNtlIFHgedUCAaPuTsWaFznxzllRFlaIoiJ3H9/GM=; 
	b=ORggylszFSVe+psY4rxC90SttRtbjs1b/+kWl1CCaJvJ8K1RP5huoixFcy/Him4DDon+ee4rHfmSnJXcNofTK+/McOkB8/dQYm011Ld2Elh/6y7wsvqwf3eyEdyS3XkRjndAuzSQZZEpd84j3+joTjv9NJAzg79oL5MY6vX25QQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=crosslink.net;
	spf=pass  smtp.mailfrom=cstrobel@crosslink.net;
	dmarc=pass header.from=<cstrobel@crosslink.net>
Received: by mx.zohomail.com with SMTPS id 1755792389659431.7165641904652;
	Thu, 21 Aug 2025 09:06:29 -0700 (PDT)
Message-ID: <1fb86f89-54b4-4499-a6b2-7aa1bc992261@crosslink.net>
Date: Thu, 21 Aug 2025 12:06:28 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Writing Checks
To: blinux-list@redhat.com
References: <20250821085400.043859@wb5agz.lan>
From: "'Chevelle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <20250821085400.043859@wb5agz.lan>
X-ZohoMailClient: External
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: iapPrNOq3Yvco4XiB4KEaBOAZJl6kBKLjmylJrSvAkw_1755792455
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Original-Sender: cstrobel@crosslink.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@crosslink.net header.s=zoho header.b=SmW7l6bh;       arc=pass (i=2
 spf=pass spfdomain=crosslink.net dkim=pass dkdomain=crosslink.net dmarc=pass
 fromdomain=crosslink.net);       spf=pass (google.com: domain of
 cstrobel@crosslink.net designates 136.143.188.14 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
X-Original-From: Chevelle <cstrobel@crosslink.net>
Reply-To: Chevelle <cstrobel@crosslink.net>
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

 =C2=A0=C2=A0=C2=A0 I printed envelopes using the Libre Office template.=C2=
=A0 The printer=20
has an envelope feeder and I had to set it in landscape. I did a quick=20
search but I didn't find a check writing template. Probably one exists=20
or could be developed.=C2=A0 Some bill paying services will send a check to=
=20
someone for you.=C2=A0 Maybe your bank has one.



On 8/21/25 9:54 AM, martin.m@suddenlink.net wrote:
> This is a question to this group and I figured some of you have
> already been here so may have some answers.  My lovely wife
> passed away in July after 42 years of putting up with my
> idiosyncrasies so now I am doing a bunch of stuff I either never
> did before or haven't done since the early eighties.
>
> 	One thing I did back then was learn the format of the
> checks of our credit union so I could put a check in the
> typewriter, count the number of lines to roll down from the top
> of the paper and type it out and I got pretty good at it but
> times are different.
>
> 	One of the things though that still exists is payment by
> check and I still need to do that from time to time.
>
> 	Are there still printers made that can be essentially
> handled like an old typewriter so that you could put a check in
> the plattin roller, start it at the top and have your computer do
> all the spacing after, of course, telling it what to do?
>
> 	This shouldn't be a difficult task if I had a printer
> whose command set is open so one can just tell it to advance Y
> number of lines from the top and go X number of spaces to the
> right and print the amount, basically, all the stuff you normally
> put on a check plus blacking out unused space so miscreants can't
> use that white space for unapproved alterations.
>
> 	The other alternative is to have the person you are
> giving the check to write it themselves but they may not be there
> so this solution needs to fit in to the existing framework.
>
> 	Not everybody takes PayPal or those other companies who
> do similar things and those companies are also subscriptions in
> which you pay whether or not you are using the service which is
> what I call a running meter/money leak.
>
> 	Most checkbooks I am familiar with also make a carbon
> copy on a sheet of paper behind each actual check so you almost
> have to have an impact printer head to use that ability.
>
> 	Anyway, I would like to read some knowledgeable responses
> which is why I am posting this message.
>
> 	Thank you.
>
> Martin McCormick
>
>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

