Return-Path: <blinux-list+bncBCLPHQH4XEIRBQER7KYAMGQEMRG65RA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6688A6DCB
	for <lists+blinux-list@lfdr.de>; Tue, 16 Apr 2024 16:18:43 +0200 (CEST)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-78edbede4b7sf422353185a.0
        for <lists+blinux-list@lfdr.de>; Tue, 16 Apr 2024 07:18:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713277122; cv=pass;
        d=google.com; s=arc-20160816;
        b=b/2DnRLSRkHC8fBOvqpRhMh6vK1dyrZR753+mu/zXKzaCi7lKxTR64GiBMs3Bz3UEv
         qgOkeH4pATDT3mSoMp84YAQH6D1bpxhAWoaFYaGemD4xN/19hKRhEUmipRsI3eMETFlJ
         BdN9ErMCo9+ZrNcocVvmxGkLXBPtVCtkiQno+BcRJ0v6BEx4qoGv7K6Ruz5qynBPBJ3W
         yr5OB+IuBAhrbnIFIiDDQosUhK81BBT1Csd0otTDSLmRq6WUVhIxO6Lw52rRA+3fUdBd
         Xlv++mPpa1x7+jjXfQzengBTVqSeb23Goaps/opxp80bZ4wdK/Axx7lcLD79cX0HPHT+
         qHrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=6FhzIpeSq3nr9Hf2lfdSIOXMknM8Wy1RQbKMfBIC5ek=;
        fh=gxgPHBZcM3/wdFQ42DFZPUTPqnTiRz5S6IfAk30qoCk=;
        b=x3PjmHDRwbMrrIpmKFMVHxk6hPuIU/9E17NmCOiXPMCvW2Zze6Vwe1WuCohlAui9Pa
         8jDNkQTvPVoXdI7UoHzRUqGzQmBNWqvTlyMnWt9p110hTUX7d846XIcIpBVfzE1D0oMg
         N8aUDeOkTgFFcwSafCV+AbC6h6uX10eF/BfIEHniNCktT0vAG6rrdu3+Bab5ZNLKneD3
         cs0zQzLL/B6pO+rHQAmWOp2TbFj4nmuztr3dKBTn6SMt9hhu9+4587t7/RsTRb2qGjuK
         qN/WnZPBTUUfU6AFXf6CDBk+kIw6W31wCjaRtsYtB2DIoCousSvtmFkam6TViFEBi5n0
         7V9w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713277122; x=1713881922;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6FhzIpeSq3nr9Hf2lfdSIOXMknM8Wy1RQbKMfBIC5ek=;
        b=Oss5+JU9d/ldQEBJxyTP3RhL1dbvMeFUUpl2W12MjDuFHiRBnpgJDn76Q6hU4rAbYp
         dRlWFN/YdUddy3uyH16LIpOzMpvDODK+01q9XOSlEKwrcUsvTb7gR4cqDq7PPQrI7ZIQ
         2UVchSFI/IiwZzGRJXjz9RM3fvPPdauCvyPpX8/vX/+ZE0pdekSH4RxcgVoqDV3tVZvm
         44Egm9JyYWra1+NETuxlrU3sDyhDYRnIRCc0CjCFFMxL8e3+bsbl9XSYxARNFHDLyFIz
         198kbXNO0Pdluolq7sexiVC4fA4t3uMjcLWKDdufXrlfI8kuGY2Omy5h2KDsMjEFFX8n
         Fipw==
X-Forwarded-Encrypted: i=2; AJvYcCVJFM+W+o0uTL9XfGk4uVX5EanSZ4YD33FOejaNEFhufBSGibk1AmKXR+DK2Q3OBUSusqr8Da5N0KUyHTyyaBfs7vwt9wmgC7Uj
X-Gm-Message-State: AOJu0YzuM1fhZweDc4r9N5JhTrO8hzRjls1ah+1OZTzYzSiQcyR3QB7W
	adJOIBCmUTPcegDoxurhvl4B/warzc9sbrsi9cNTOBsnet7y72MDSUqrkQMPcHk=
X-Google-Smtp-Source: AGHT+IE7ATYP5fh3qrTHSLydMUXDeRHC2oLCJFGoPOFukVHM8SQfHw3y0nigV/s5a30QJcWnLU1WDA==
X-Received: by 2002:a05:620a:4713:b0:78e:e679:23cf with SMTP id bs19-20020a05620a471300b0078ee67923cfmr4637487qkb.1.1713277121186;
        Tue, 16 Apr 2024 07:18:41 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7dc8:0:b0:436:f33f:70d with SMTP id c8-20020ac87dc8000000b00436f33f070dls3345572qte.0.-pod-prod-00-us;
 Tue, 16 Apr 2024 07:18:40 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXMr1fZMgMDVEblDd/YBa4CNU4hQTGJ3CKDRV5jqPUQCe4EGbG4iOncdehDaj3wc5msfSluNYp2IMEFgX6rheRROzQfDies2lmRs7f8
X-Received: by 2002:ac8:59d2:0:b0:436:db80:d2c2 with SMTP id f18-20020ac859d2000000b00436db80d2c2mr4424816qtf.8.1713277120090;
        Tue, 16 Apr 2024 07:18:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713277120; cv=none;
        d=google.com; s=arc-20160816;
        b=BVF+RlbpegD+x1IdquKC857b6hyQZK5gzBL4iKBUVuEWEU9YhrmTfccGGCr4J8U+jP
         k/zslqXjlsel5kr6kNmfcr2k2poGTsj6U9MyxOgl7ofT9PBgNWedUMPPfJsZdwwiQDTd
         czihDM+Tu/yDsKKFX0GlxLAlkVkxRA6gNfSWBwUCadzpWPlMoHP+ATiF/zB76VRH+dSh
         JSayeZt81und0znBcxAG1EL5pAzyVdS83kX5Nr+X+xeHpUJC4jSVDFgl0/eGdq8f/JsG
         tCNFylVu/QhNMFvvW5a7Ocf8M8pAJW5NuWzsnDNrAlif3C3BkwJTAKY+9HqlhIkF/Ibt
         zLqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=Bq0VC5f3ZlkB+SrDHeZHjG6oZRlj9yTO8XBHSIJg0LY=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=F1HYp/d+wlqMcqTgxknjDEf3IaFC4oVq37ZfYLCs2rjwJ61u9993pt5i0uFWxP+W4F
         JZMEoLUDnxEzmUfQXwQKM2ZY6eWvJRc2KIoX4g2sXScNM56TzRBfz4q3J1KuXDtfRdpq
         sJPPi4jrYEDjN0GVPpML31uSV21A2knvcFbQd6PpoxEalopCuNT2Fjs8zMGoKXZEro7K
         tVsRD2W6XSTN8LWN2uMsuPR4r068kFZK8Xg5OK/7RC4amJ0sZno5GXQW+fko+sEZc7O6
         CTKcfLNxLh3QnTl756ozxNe2f53RW5IH3nX2+3a00eeY9j4GL0pEJkhEhF0Pp89HrU56
         Jwiw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id s13-20020a05622a178d00b00436446adf3fsi11898606qtk.318.2024.04.16.07.18.39
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 07:18:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-307-i51vAmKKPr-EyZgZ3SS_Rg-1; Tue, 16 Apr 2024 10:18:38 -0400
X-MC-Unique: i51vAmKKPr-EyZgZ3SS_Rg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3C2FC80021B
	for <blinux-list@gapps.redhat.com>; Tue, 16 Apr 2024 14:18:38 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 38E9D1C06666; Tue, 16 Apr 2024 14:18:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F2E321C060A6
	for <blinux-list@redhat.com>; Tue, 16 Apr 2024 14:18:37 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9EC8788E421
	for <blinux-list@redhat.com>; Tue, 16 Apr 2024 14:18:37 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-75-ILoWW77tMg6E8XPNW52Krg-1; Tue,
 16 Apr 2024 10:18:34 -0400
X-MC-Unique: ILoWW77tMg6E8XPNW52Krg-1
Received: from [10.0.2.1] (jpw.jasonjgw.net [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id B4D6D32433
	for <blinux-list@redhat.com>; Tue, 16 Apr 2024 14:18:32 +0000 (UTC)
Message-ID: <32bce24a-c40c-491d-8932-4993cd818a19@jasonjgw.net>
Date: Tue, 16 Apr 2024 10:18:31 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: coping a folder
To: blinux-list@redhat.com
References: <B60FBC29-85A3-498F-AB59-FE948B98E5EA@gmail.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <B60FBC29-85A3-498F-AB59-FE948B98E5EA@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Type: multipart/alternative;
 boundary="------------CykNNAcb0ksB6d0CAG1rMCBg"
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
--------------CykNNAcb0ksB6d0CAG1rMCBg
Content-Type: text/plain; charset="UTF-8"; format=flowed


On 16/4/24 09:49, Daniel Crone wrote:
> I got in to the Downloads folder.
> I typed
> sudo cp linux-a11y /usr/share/sounds
> The linux-a11y folder failed to copy.
Did you forget the -r option to copy it recursively (with all of its 
files and

subdirectories included)?

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--------------CykNNAcb0ksB6d0CAG1rMCBg
Content-Type: text/html; charset="UTF-8"

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 16/4/24 09:49, Daniel Crone wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:B60FBC29-85A3-498F-AB59-FE948B98E5EA@gmail.com">
      <pre>I got in to the Downloads folder.
I typed
sudo cp linux-a11y /usr/share/sounds
The linux-a11y folder failed to copy.</pre>
    </blockquote>
    Did you forget the -r option to copy it recursively (with all of its
    files and <br>
    <pre>subdirectories included)?</pre>
    <br>
  </body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--------------CykNNAcb0ksB6d0CAG1rMCBg--

